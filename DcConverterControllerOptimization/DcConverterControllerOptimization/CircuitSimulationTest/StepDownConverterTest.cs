using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class StepDownConverterTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_Periodic0InitialVoltageAnd894ms_CorrectVoltage() {
            var circuit = new StepDownConverter(2, 0.2, 0.220, 0.900, 0, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.894518705);

            outputVoltage.Should().BeApproximately(7.91872, 3e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Periodic2InitialVoltageAnd507ms_CorrectVoltage() {
            var circuit = new StepDownConverter(2, 0.2, 0.220, 0.900, 2, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.507509959);

            outputVoltage.Should().BeApproximately(5.107602, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Aeriodic0InitialVoltageAnd407ms_CorrectVoltage() {
            var circuit = new StepDownConverter(2, 3, 0.220, 0.100, 0, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.40718702);

            outputVoltage.Should().BeApproximately(3.09207, 2e-3);
        }
    }
}
