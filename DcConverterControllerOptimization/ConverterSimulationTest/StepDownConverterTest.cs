using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System.Linq;

namespace ConverterSimulationTest {
    [TestClass]
    public class StepDownConverterTest {
        private ConstantInputVoltage _constantInputVoltage;
        private ConstantOnOffController _constantOnOffController;
        private StepDownConverterParameter _parameter;
        private StepDownConverter _converter;

        [TestInitialize]
        public void SetUp() {
            _constantInputVoltage = new ConstantInputVoltage(20);
            _constantOnOffController = new ConstantOnOffController(20e-6, 114e-6);
            _parameter = new StepDownConverterParameter {
                Capacitor = 100e-6,
                Inductance = 2e-3,
                DiodeForwardVoltage = 0.67,
                IgbtForwardVoltage = 2.3,
                LoadResistor = 10,
                SeriesResistor = 0.4
            };
            _converter = new StepDownConverter(_parameter);
        }

        [TestMethod]
        public void Simulate_StaticInputVoltageAndConstantOnOffTime_CorrectVoltageAtEnd() {
            var results = _converter.Simulate(_constantInputVoltage, _constantOnOffController, 200e-3);

            results.Count.Should().BeGreaterThan(0);
            var result = results.Last();
            result.Time.Should().BeApproximately(200e-3, 1e-5);
            result.OutputVoltage.Should().BeApproximately(1.8171461, 1e-3);
        }

        [TestMethod]
        public void Simulate_StaticInputVoltageAndConstantOnOffTime10ms_CorrectTimeSteps() {
            var results = _converter.Simulate(_constantInputVoltage, _constantOnOffController, 10e-3);

            var shouldBe = new List<double>();
            for (var time = 0.0; time < 10e-3; time += (20e-6 + 114e-6)) {
                shouldBe.Add(time);
                shouldBe.Add(time + 20e-6);
            }
            shouldBe.Add(10e-3);
            results.Count.Should().Be(shouldBe.Count());
            for (var i = 0; i < shouldBe.Count(); ++i) {
                results[i].Time.Should().BeApproximately(shouldBe[i], 1e-10);
            }
        }

        [TestMethod]
        public void Simulate_StaticInputVoltageAndConstantOnOffTime1ms_CorrectTimeSteps() {
            var results = _converter.Simulate(_constantInputVoltage, _constantOnOffController, 1e-3);

            results.Count.Should().Be(17);
            results[0].Time.Should().BeApproximately(0, 1e-10);
            results[1].Time.Should().BeApproximately(20e-6, 1e-10);
            results[2].Time.Should().BeApproximately(134e-6, 1e-10);
            results[3].Time.Should().BeApproximately(154e-6, 1e-10);
            results[4].Time.Should().BeApproximately(268e-6, 1e-10);
            results[5].Time.Should().BeApproximately(288e-6, 1e-10);
            results[6].Time.Should().BeApproximately(402e-6, 1e-10);
            results[7].Time.Should().BeApproximately(422e-6, 1e-10);
            results[8].Time.Should().BeApproximately(536e-6, 1e-10);
            results[9].Time.Should().BeApproximately(556e-6, 1e-10);
            results[10].Time.Should().BeApproximately(670e-6, 1e-10);
            results[11].Time.Should().BeApproximately(690e-6, 1e-10);
            results[12].Time.Should().BeApproximately(804e-6, 1e-10);
            results[13].Time.Should().BeApproximately(824e-6, 1e-10);
            results[14].Time.Should().BeApproximately(938e-6, 1e-10);
            results[15].Time.Should().BeApproximately(958e-6, 1e-10);
            results[16].Time.Should().BeApproximately(1000e-6, 1e-10);
        }
    }
}
