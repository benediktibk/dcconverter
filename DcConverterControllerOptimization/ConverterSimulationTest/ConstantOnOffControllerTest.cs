using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ConverterSimulationTest {
    [TestClass]
    public class ConstantOnOffControllerTest {
        [TestMethod]
        public void GetNextChangeTime_0_OnTime() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(0);

            nextChange.Should().BeApproximately(0.2, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_OnTime_PeriodTime() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(0.2);

            nextChange.Should().BeApproximately(0.7, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_SmallerThanOnTime_OnTime() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(0.1);

            nextChange.Should().BeApproximately(0.2, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_BiggerThanOnTime_PeriodTime() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(0.3);

            nextChange.Should().BeApproximately(0.7, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_MultiplePeriodInOnTime_OnTimeEnd() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(2.2);

            nextChange.Should().BeApproximately(2.3, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_MultiplePeriodInOffTime_PeriodTimeEnd() {
            var controller = new ConstantOnOffController(0.2, 0.5);

            var nextChange = controller.GetNextChangeTime(2.7);

            nextChange.Should().BeApproximately(2.8, 1e-5);
        }

        [TestMethod]
        public void GetNextChangeTime_ExactBarrier_NextOffTime() {
            var controller = new ConstantOnOffController(20e-6, 114e-6);

            var nextChange = controller.GetNextChangeTime(154e-6);

            nextChange.Should().BeApproximately(268e-6, 1e-10);
        }
    }
}
