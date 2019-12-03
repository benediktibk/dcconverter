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
        public void CalculateOutputVoltage_Aperiodic2InitialVoltageAnd237ms_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.237048577);

            outputVoltage.Should().BeApproximately(3.100989, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd237ms_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_aperiodicCircuit);
            var time = 0.237048577;
            var outputVoltageAtSameTime = circuit.CalculateOutputVoltage(time);
            var timeLater = time + 1e-5;
            var outputVoltageLater = circuit.CalculateOutputVoltage(timeLater);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(time);

            var gradientShouldBe = (outputVoltageLater - outputVoltageAtSameTime) / (timeLater - time);
            outputVoltageGradient.Should().BeApproximately(gradientShouldBe, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint1_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_aperiodicCircuit);
            _aperiodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _aperiodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _aperiodicCircuit.InputVoltage = 5;
            var circuitOff = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.473240 - 0.2);

            outputVoltage.Should().BeApproximately(2.432765, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint2_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_aperiodicCircuit);
            _aperiodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _aperiodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _aperiodicCircuit.InputVoltage = 5;
            var circuitOff = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.201000 - 0.2);

            outputVoltage.Should().BeApproximately(2.959440, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint3_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_aperiodicCircuit);

            var outputVoltage = circuitOn.CalculateOutputVoltage(0.170150);

            outputVoltage.Should().BeApproximately(2.823536, 3e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_PeriodicWithPulse_CorrectVoltage() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverter(_periodicCircuit);
            _periodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _periodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _periodicCircuit.InputVoltage = 2.2;
            var circuitOff = new StepDownConverter(_periodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.765300 - 0.2);

            outputVoltage.Should().BeApproximately(3.66616, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd0s_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_aperiodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(0);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Periodic2InitialVoltageAnd0s_CorrectVoltageGradient() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_periodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(0);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd1000s_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_aperiodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(1000);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Periodic2InitialVoltageAnd1000s_CorrectVoltageGradient() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverter(_periodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(1000);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }
    }
}
