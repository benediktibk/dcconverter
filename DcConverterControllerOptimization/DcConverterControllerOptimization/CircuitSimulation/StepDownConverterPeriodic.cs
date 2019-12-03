using System;

namespace CircuitSimulation
{
    public class StepDownConverterPeriodic : ICircuit
    {
        #region private variables

        private readonly double _outputVoltageInitial;
        private readonly double _outputVoltageGradientInitial;
        private readonly double _inputVoltage;
        private readonly double _alpha;
        private readonly double _beta;
        private readonly double _gamma;
        private readonly double _radicand;
        private readonly double _a;
        private readonly double _b;
        private readonly double _k1;
        private readonly double _k2;

        #endregion

        #region constructor

        public StepDownConverterPeriodic(double outputVoltageInitial, double outputVoltageGradientInitial, double inputVoltage, double alpha, double beta, double gamma, double radicand) {
            _outputVoltageInitial = outputVoltageInitial;
            _outputVoltageGradientInitial = outputVoltageGradientInitial;
            _inputVoltage = inputVoltage;
            _alpha = alpha;
            _beta = beta;
            _gamma = gamma;
            _radicand = radicand;
            _a = (-1) * _beta / (2 * _alpha);
            _b = Math.Sqrt((-1) * _radicand) / (2 * _alpha);
            _k1 = _outputVoltageInitial - _inputVoltage / _gamma;
            _k2 = (_outputVoltageGradientInitial - _a * _k1) / _b;
        }

        #endregion

        #region public functions
        public double CalculateOutputVoltage(double time) {
            return 
                _k1 * Math.Exp(_a * time) * Math.Cos(_b * time) + 
                _k2 * Math.Exp(_a * time) * Math.Sin(_b * time) + 
                _inputVoltage / _gamma;
        }

        public double CalculateOutputVoltageGradient(double time) {
            return
                _k1 * _a * Math.Exp(_a * time) * Math.Cos(_b * time) -
                _k1 * _b * Math.Exp(_a * time) * Math.Sin(_b * time) +
                _k2 * _a * Math.Exp(_a * time) * Math.Sin(_b * time) +
                _k2 * _b * Math.Exp(_a * time) * Math.Cos(_b * time);
        }

        #endregion
    }
}
