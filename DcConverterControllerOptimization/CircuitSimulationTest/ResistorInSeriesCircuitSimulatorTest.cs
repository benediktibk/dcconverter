using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesCircuitSimulatorTest {
        [TestMethod]
        public void CalculateOutputVoltage_2OhmInSeriesTo3Ohm_CorrectVoltage() {
            var circuit = new ResistorInSeriesCircuitSimulator(2, 3, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(2.78);

            outputVoltage.Should().BeApproximately(2.0 / 5.0 * 10, 1e-10);
        }
    }
}
