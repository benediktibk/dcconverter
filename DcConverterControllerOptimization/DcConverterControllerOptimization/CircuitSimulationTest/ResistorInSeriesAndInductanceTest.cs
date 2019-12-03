using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesAndInductanceTest
    {
        [TestMethod]
        public void CalculateOutputVoltage_0InitialVoltage05s_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndInductance(2, 3, 0.9, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.5);

            outputVoltage.Should().BeApproximately(3.728097, 1e-5);
        }
    }
}
