using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesAndCapacitorTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_0InitialVoltage406ms_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndCapacitor(2, 3, 0.3, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.406299128);

            outputVoltage.Should().BeApproximately(2.705910, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_2InitialVoltage347ms_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndCapacitor(2, 3, 0.3, 2, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.347079605);

            outputVoltage.Should().BeApproximately(3.237300, 1e-3);
        }
    }
}
