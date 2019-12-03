using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class StepDownConverterTest
    {
        private Circuit _aperiodicCircuit;
        private Circuit _periodicCircuit;

        [TestInitialize]
        public void Setup() {
            _aperiodicCircuit = new Circuit {
                LoadResistor = 2,
                SeriesResistor = 3,
                Capacitor = 0.220,
                Inductance = 0.100,
                OutputVoltageInitial = 0,
                OutputVoltageGradientInitial = 0,
                InputVoltage = 10
            };

            _periodicCircuit = new Circuit {
                LoadResistor = 2,
                SeriesResistor = 0.2,
                Capacitor = 0.220,
                Inductance = 0.900,
                OutputVoltageInitial = 0,
                OutputVoltageGradientInitial = 0,
                InputVoltage = 10
            };
        }

        [TestMethod]
        public void CalculateOutputVoltage_Periodic0InitialVoltageAnd894ms_CorrectVoltage() {
            var circuit = new StepDownConverter(_periodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.894518705);

            outputVoltage.Should().BeApproximately(7.91872, 3e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Periodic2InitialVoltageAnd507ms_CorrectVoltage() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_periodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.507509959);

            outputVoltage.Should().BeApproximately(5.107602, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Aperiodic0InitialVoltageAnd407ms_CorrectVoltage() {
            var circuit = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.40718702);

            outputVoltage.Should().BeApproximately(3.09207, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Aperiodic2InitialVoltageAnd407ms_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.40718702);

            outputVoltage.Should().BeApproximately(3.09207, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulse_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_aperiodicCircuit);
            _aperiodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _aperiodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _aperiodicCircuit.InputVoltage = 5;
            var circuitOff = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.489500);

            outputVoltage.Should().BeApproximately(3.481622, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_PeriodicWithPulse_CorrectVoltage() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_periodicCircuit);
            _periodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _periodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _periodicCircuit.InputVoltage = 2.2;
            var circuitOff = new StepDownConverter(_periodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.994500);

            outputVoltage.Should().BeApproximately(3.426294, 1e-3);
        }
    }
}
