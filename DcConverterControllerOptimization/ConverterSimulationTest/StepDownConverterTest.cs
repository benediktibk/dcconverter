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
            _constantOnOffController = new ConstantOnOffController(2e-3, 10e-3);
            _parameter = new StepDownConverterParameter {
                Capacitor = 1,
                Inductance = 1,
                DiodeForwardVoltage = 1,
                IgbtForwardVoltage = 1,
                LoadResistor = 1,
                SeriesResistor = 1
            };
            _converter = new StepDownConverter(_parameter);
        }

        [TestMethod]
        public void Simulate_StaticInputVoltageAndConstantOnOffTime_CorrectVoltageAtEnd() {
            var results = _converter.Simulate(_constantInputVoltage, _constantOnOffController, 10);

            results.Count.Should().BeGreaterThan(0);
            var result = results.Last();
            result.Time.Should().BeApproximately(10, 1e-5);
            result.OutputVoltage.Should().BeApproximately(5, 1e-5);
        }
    }
}
