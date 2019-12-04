using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;

namespace CircuitSimulationTest
{
    [TestClass]
    public class ResistorInSeriesAndInductanceCircuitSimulatorTest {
        [TestMethod]
        public void CalculateOutputVoltage_0InitialVoltage253ms_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndInductanceCircuitSimulator(2, 3, 0.9, 0, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.253018705);

            outputVoltage.Should().BeApproximately(3.018847, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_2InitialVoltage143ms_CorrectVoltage() {
            var circuit = new ResistorInSeriesAndInductanceCircuitSimulator(2, 3, 0.9, 2, 10);

            var outputVoltage = circuit.CalculateOutputVoltage(0.14350996);

            outputVoltage.Should().BeApproximately(3.098410, 1e-3);
        }
    }
}
