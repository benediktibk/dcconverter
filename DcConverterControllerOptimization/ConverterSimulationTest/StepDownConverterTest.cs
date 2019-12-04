using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;
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
    }
}
