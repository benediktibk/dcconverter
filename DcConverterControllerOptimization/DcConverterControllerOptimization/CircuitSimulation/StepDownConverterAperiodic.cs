using System;

namespace CircuitSimulation
{
    public class StepDownConverterPeriodic : ICircuit
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

        public StepDownConverterPeriodic(double outputVoltageInitial, double outputVoltageInitialGradient, double inputVoltage, double alpha, double beta, double gamma, double radicand) {
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
            var a = (-1) * _beta / (2 * _alpha);
            var b = Math.Sqrt((-1) * _radicand) / (2 * _alpha);
            var k1 = _outputVoltageInitial - _inputVoltage / _gamma;
            var k2 = (_outputVoltageInitialGradient - a * k1) / b;
            return 
                k1 * Math.Exp(a * time) * Math.Cos(b * time) + 
                k2 * Math.Exp(a * time) * Math.Sin(b * time) + 
                _inputVoltage / _gamma;
        }
        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion
    }
}
