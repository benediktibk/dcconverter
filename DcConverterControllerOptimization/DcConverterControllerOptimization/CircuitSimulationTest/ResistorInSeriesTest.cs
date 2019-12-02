using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_2OhmInSeriesTo3Ohm_CorrectVoltage() {
            var circuit = new ResistorInSeries(2, 3);

            var outputVoltage = circuit.CalculateOutputVoltage(10, 5);

            outputVoltage.Should().BeApproximately(2.0 / 5.0 * 10, 1e-10);
        }
    }
}
