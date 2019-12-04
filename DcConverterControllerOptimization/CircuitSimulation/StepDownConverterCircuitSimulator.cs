using System;

namespace CircuitSimulation
{
    public class StepDownConverterCircuitSimulator : ICircuitSimulator
    {
        #region private variables

        private readonly ICircuitSimulator _internalCircuit;
        private readonly double _alpha;
        private readonly double _beta;
        private readonly double _gamma;
        private readonly double _radicand;

        #endregion

        #region constructors

        public StepDownConverterCircuitSimulator(CircuitParameter circuit) {
            _alpha = circuit.Inductance * circuit.Capacitor;
            _beta = (circuit.Inductance + circuit.SeriesResistor * circuit.LoadResistor * circuit.Capacitor) / circuit.LoadResistor;
            _gamma = (circuit.LoadResistor + circuit.SeriesResistor) / circuit.LoadResistor;
            _radicand = _beta * _beta - 4 * _alpha * _gamma;
            _internalCircuit = CreateInternalCircuit(circuit.InputVoltage, circuit.OutputVoltageInitial, circuit.OutputVoltageGradientInitial, _alpha, _beta, _gamma, _radicand);
        }

        public StepDownConverterCircuitSimulator(StepDownConverterCircuitSimulator converter, double inputVoltage, double initialOutputVoltage, double initialOutputVoltageGradient) {
            _alpha = converter._alpha;
            _beta = converter._beta;
            _gamma = converter._gamma;
            _radicand = converter._radicand;
            _internalCircuit = CreateInternalCircuit(inputVoltage, initialOutputVoltage, initialOutputVoltageGradient, _alpha, _beta, _gamma, _radicand);
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

        #region

        private static ICircuitSimulator CreateInternalCircuit(double inputVoltage, double initialOutputVoltage, double initialOutputVoltageGradient, double alpha, double beta, double gamma, double radicand) {
            if (radicand > 0)
                return new StepDownConverterAperiodicCircuitSimulator(initialOutputVoltage, initialOutputVoltageGradient, inputVoltage, alpha, beta, gamma, radicand);
            else if (radicand < 0)
                return new StepDownConverterPeriodicCircuitSimulator(initialOutputVoltage, initialOutputVoltageGradient, inputVoltage, alpha, beta, gamma, radicand);
            else
                throw new NotImplementedException("aperiodic edge case is not implemented");
        }

        #endregion
    }
}
