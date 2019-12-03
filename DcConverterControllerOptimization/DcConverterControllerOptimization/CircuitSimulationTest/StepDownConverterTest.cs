using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class StepDownConverterTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_0InitialVoltageAnd894ms_CorrectVoltage() {
            var circuit = new StepDownConverter(2, 0.2, 0.220, 0.900, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.894518705);

            outputVoltage.Should().BeApproximately(7.91872, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_2InitialVoltageAnd507ms_CorrectVoltage() {
            var circuit = new StepDownConverter(2, 0.2, 0.220, 0.900, 2, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.507509959);

            outputVoltage.Should().BeApproximately(5.107602, 1e-3);
        }
    }
}
