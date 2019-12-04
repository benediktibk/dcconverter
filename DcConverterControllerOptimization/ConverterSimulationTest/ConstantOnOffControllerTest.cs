using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ConverterSimulationTest {
    [TestClass]
    public class ConstantOnOffControllerTest {
        [TestMethod]
        public void GetNextChangeTime_0_OnTime() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(0);

            nextChange.Should().BeApproximately(0.2, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_OnTime_PeriodTime() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(0.2);

            nextChange.Should().BeApproximately(0.7, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_SmallerThanOnTime_OnTime() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(0.1);

            nextChange.Should().BeApproximately(0.2, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_BiggerThanOnTime_PeriodTime() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(0.3);

            nextChange.Should().BeApproximately(0.7, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_MultiplePeriodInOnTime_OnTimeEnd() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(2.2);

            nextChange.Should().BeApproximately(2.3, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_MultiplePeriodInOffTime_PeriodTimeEnd() {
            var inputVoltage = new ConstantOnOffController(0.2, 0.5);

            var nextChange = inputVoltage.GetNextChangeTime(2.7);

            nextChange.Should().BeApproximately(2.8, 1e-5);
        }
    }
}
