using CircuitSimulation;
using System;
using System.Collections.Generic;

namespace ConverterSimulation {
    public class StepDownConverterSimulator {
        #region private variables

        private readonly StepDownConverterParameter _parameter;

        #endregion

        #region constructor

        public StepDownConverterSimulator(StepDownConverterParameter parameter) {
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
            var inputVoltageValue = inputVoltage.GetCompleteResult(current).Value;
            var igbtOn = controller.GetCompleteResult(current).Value;
            var circuit = CreateFirstCircuitSimulation(igbtOn, internalState, inputVoltageValue);

            do {
                var inputVoltageResult = inputVoltage.GetCompleteResult(current);
                var controllerResult = controller.GetCompleteResult(current);
                circuit = CreateCircuitSimulation(controllerResult.Value, internalState, inputVoltageResult.Value, circuit);
                var next = Math.Min(controllerResult.NextChangeTime, inputVoltageResult.NextChangeTime);
                internalState.OutputVoltage = circuit.CalculateOutputVoltage(next - current);
                internalState.OutputVoltageGradient = circuit.CalculateOutputVoltageGradient(next - current);
                results.Add(new OutputVoltageAndTime { Time = current, OutputVoltage = internalState.OutputVoltage });
                current = next;
            } while (current < time);

            internalState.OutputVoltage = circuit.CalculateOutputVoltage(time);
            internalState.OutputVoltageGradient = circuit.CalculateOutputVoltageGradient(time);
            results.Add(new OutputVoltageAndTime { Time = time, OutputVoltage = internalState.OutputVoltage });

            return results;
        }

        #endregion

        #region private functions

        private StepDownConverterCircuitSimulator CreateCircuitSimulation(bool igbtOn, StepDownConverterInternalState internalState, double inputVoltage, CircuitSimulation.StepDownConverterCircuitSimulator previousCircuit) {
            var realInputVoltage = CalculateRealInputVoltage(igbtOn, inputVoltage);
            return new CircuitSimulation.StepDownConverterCircuitSimulator(previousCircuit, realInputVoltage, internalState.OutputVoltage, internalState.OutputVoltageGradient);
        }

        private StepDownConverterCircuitSimulator CreateFirstCircuitSimulation(bool igbtOn, StepDownConverterInternalState internalState, double inputVoltage) {
            var realInputVoltage = CalculateRealInputVoltage(igbtOn, inputVoltage);
            var circuit = new CircuitSimulation.CircuitParameter {
                LoadResistor = _parameter.LoadResistor,
                SeriesResistor = _parameter.SeriesResistor,
                Inductance = _parameter.Inductance,
                Capacitor = _parameter.Capacitor,
                OutputVoltageInitial = internalState.OutputVoltage,
                OutputVoltageGradientInitial = internalState.OutputVoltageGradient,
                InputVoltage = realInputVoltage
            };

            return new StepDownConverterCircuitSimulator(circuit);
        }

        private double CalculateRealInputVoltage(bool igbtOn, double inputVoltage) {
            return igbtOn ?
                    inputVoltage - _parameter.IgbtForwardVoltage :
                    (-1) * _parameter.DiodeForwardVoltage;
        }

        #endregion

    }
}
