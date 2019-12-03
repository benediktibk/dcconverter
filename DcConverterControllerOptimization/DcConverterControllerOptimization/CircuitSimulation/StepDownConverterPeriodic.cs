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
        }

        #endregion

        #region public functions
        public double CalculateOutputVoltage(double time) {
            var lambda1 = ((-1) * _beta + Math.Sqrt(_radicand)) / (2 * _alpha);
            var lambda2 = ((-1) * _beta - Math.Sqrt(_radicand)) / (2 * _alpha);
            var k2 = 
                (_outputVoltageInitialGradient - lambda1 * _outputVoltageInitial + _inputVoltage * lambda1 / _gamma) / 
                (lambda2 - lambda1);
            var k1 = _outputVoltageInitialGradient / lambda1 - lambda2 / lambda1 * k2;
            return 
                k1 * Math.Exp(lambda1 * time) + 
                k2 * Math.Exp(lambda2 * time) + 
                _inputVoltage / _gamma;
        }
        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion
    }
}
