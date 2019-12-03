using System;

namespace CircuitSimulation
{
    public class StepDownConverterAperiodic : ICircuit
    {
        #region private variables

        private readonly double _outputVoltageInitial;
        private readonly double _outputVoltageInitialGradient;
        private readonly double _inputVoltage;
        private readonly double _alpha;
        private readonly double _beta;
        private readonly double _gamma;
        private readonly double _radicand;
        private readonly double _lambda1;
        private readonly double _lambda2;
        private readonly double _k1;
        private readonly double _k2;

        #endregion

        #region constructor

        public StepDownConverterAperiodic(double outputVoltageInitial, double outputVoltageInitialGradient, double inputVoltage, double alpha, double beta, double gamma, double radicand) {
            _outputVoltageInitial = outputVoltageInitial;
            _outputVoltageInitialGradient = outputVoltageInitialGradient;
            _inputVoltage = inputVoltage;
            _alpha = alpha;
            _beta = beta;
            _gamma = gamma;
            _radicand = radicand;
            _lambda1 = ((-1) * _beta + Math.Sqrt(_radicand)) / (2 * _alpha);
            _lambda2 = ((-1) * _beta - Math.Sqrt(_radicand)) / (2 * _alpha);
            _k2 =
                (_outputVoltageInitialGradient - _lambda1 * _outputVoltageInitial + _inputVoltage * _lambda1 / _gamma) /
                (_lambda2 - _lambda1);
            _k1 = _outputVoltageInitialGradient / _lambda1 - _lambda2 / _lambda1 * _k2;
        }

        #endregion

        #region public functions
        public double CalculateOutputVoltage(double time) {
            return 
                _k1 * Math.Exp(_lambda1 * time) + 
                _k2 * Math.Exp(_lambda2 * time) + 
                _inputVoltage / _gamma;
        }

        public double CalculateOutputVoltageGradient(double time) {
            return
                _k1 * _lambda1 * Math.Exp(_lambda1 * time) +
                _k2 * _lambda2 * Math.Exp(_lambda2 * time);
        }

        #endregion
    }
}
