using System;

namespace CircuitSimulation
{
    public class StepDownConverter : ICircuitSimulator
    {
        #region private variables

        private readonly ICircuitSimulator _internalCircuit;

        #endregion

        #region constructor

        public StepDownConverter(Circuit circuit) {
            var alpha = circuit.Inductance * circuit.Capacitor;
            var beta = (circuit.Inductance + circuit.SeriesResistor * circuit.LoadResistor * circuit.Capacitor) / circuit.LoadResistor;
            var gamma = (circuit.LoadResistor + circuit.SeriesResistor) / circuit.LoadResistor;
            var radicand = beta * beta - 4 * alpha * gamma;

            if (radicand > 0)
                _internalCircuit = new StepDownConverterAperiodic(circuit.OutputVoltageInitial, circuit.OutputVoltageGradientInitial, circuit.InputVoltage, alpha, beta, gamma, radicand);
            else if (radicand < 0)
                _internalCircuit = new StepDownConverterPeriodic(circuit.OutputVoltageInitial, circuit.OutputVoltageGradientInitial, circuit.InputVoltage, alpha, beta, gamma, radicand);
            else
                throw new NotImplementedException("aperiodic edge case is not implemented");
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            return _internalCircuit.CalculateOutputVoltage(time);
        }

        public double CalculateOutputVoltageGradient(double time) {
            return _internalCircuit.CalculateOutputVoltageGradient(time);
        }

        #endregion
    }
}
