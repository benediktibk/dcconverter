using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesAndCapacitorTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_0InitialVoltage05s_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndCapacitor(2, 3, 0.3, 0);

            var outputVoltage = circuit.CalculateOutputVoltage(0.5, 10);

            outputVoltage.Should().BeApproximately(2.99004, 1e-5);
        }
    }
}
