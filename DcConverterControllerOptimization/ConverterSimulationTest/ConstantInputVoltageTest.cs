using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ConverterSimulationTest {
    [TestClass]
    public class ConstantInputVoltageTest {
        [TestMethod]
        public void GetNextChangeTime_Any_DoubleMax() {
            var inputVoltage = new ConstantInputVoltage(4.5);

            var nextChange = inputVoltage.GetNextChangeTime(3);

            nextChange.Should().Be(double.MaxValue);
        }

        [TestMethod]
        public void GetValueAny_InputVoltage() {
            var inputVoltage = new ConstantInputVoltage(4.5);

            var nextChange = inputVoltage.GetValue(3);

            nextChange.Should().Be(4.5);
        }
    }
}
