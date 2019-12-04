using System;
using System.Collections.Generic;

namespace ConverterSimulation {
    public class StepDownConverter {
        #region private variables

        private readonly StepDownConverterParameter _parameter;

        #endregion

        #region constructor

        public StepDownConverter(StepDownConverterParameter parameter) {
            _parameter = parameter;
        }

        #endregion

        #region public functions

        public List<OutputVoltageAndTime> Simulate(IInputVoltage inputVoltage, IController controller, double time) {
            var results = new List<OutputVoltageAndTime>();
            var current = 0.0;
            var internalState = new StepDownConverterInternalState {
                OutputVoltage = 0,
                OutputVoltageGradient = 0
            };

            do {
                var inputVoltageValue = inputVoltage.GetValue(current);
                var igbtOn = controller.GetValue(current);
                var circuit = CreateCircuitSimulation(igbtOn, internalState, inputVoltageValue);
                var nextChangeTimeController = controller.GetNextChangeTime(0);
                var nextChangeTimeInputVoltage = inputVoltage.GetNextChangeTime(0);
                var next = Math.Min(nextChangeTimeController, nextChangeTimeInputVoltage);
                internalState.OutputVoltage = circuit.CalculateOutputVoltage(next - current);
                internalState.OutputVoltageGradient = circuit.CalculateOutputVoltageGradient(next - current);
                results.Add(new OutputVoltageAndTime { Time = current, OutputVoltage = internalState.OutputVoltage });
                current = next;
            } while (current < time);

            return results;
        }

        #endregion

        #region private functions

        private CircuitSimulation.StepDownConverter CreateCircuitSimulation(bool igbtOn, StepDownConverterInternalState internalState, double inputVoltage) {
            var realInputVoltage = 
                igbtOn ? 
                    inputVoltage - _parameter.IgbtForwardVoltage : 
                    (-1) * _parameter.DiodeForwardVoltage;

            var circuit = new CircuitSimulation.Circuit {
                LoadResistor = _parameter.LoadResistor,
                SeriesResistor = _parameter.SeriesResistor,
                Inductance = _parameter.Inductance,
                Capacitor = _parameter.Capacitor,
                OutputVoltageInitial = internalState.OutputVoltage,
                OutputVoltageGradientInitial = internalState.OutputVoltageGradient,
                InputVoltage = realInputVoltage
            };
            return new CircuitSimulation.StepDownConverter(circuit);
        }

        #endregion

    }
}
