using System;

namespace CircuitSimulation
{
    public class StepDownConverter : ICircuit
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;
        private readonly double _capacitor;
        private readonly double _inductance;
        private readonly double _outputVoltageInitial;
        private readonly double _outputVoltageInitialGradient;
        private readonly double _inputVoltage;
        private readonly double _alpha;
        private readonly double _beta;
        private readonly double _gamma;
        private readonly double _radicand;

        #endregion

        #region constructor

        public StepDownConverter(double loadResistor, double seriesResistor, double capacitor, double inductance, double outputVoltageInitial, double outputVoltageInitialGradient, double inputVoltage) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _capacitor = capacitor;
            _inductance = inductance;
            _outputVoltageInitial = outputVoltageInitial;
            _outputVoltageInitialGradient = outputVoltageInitialGradient;
            _inputVoltage = inputVoltage;
            _alpha = _inductance * _capacitor;
            _beta = (_inductance + _seriesResistor * _loadResistor * _capacitor) / _loadResistor;
            _gamma = (_loadResistor + _seriesResistor) / _loadResistor; 
            _radicand = _beta * _beta - 4 * _alpha * _gamma;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            if (_radicand > 0)
                return CalculateOutputVoltageAperiodic(time);
            else
                return CalculateOutputVoltagePeriodic(time);
        }

        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion

        #region private functions

        private double CalculateOutputVoltageAperiodic(double time) {
            var lambda1 = ((-1) * _beta + Math.Sqrt(_radicand)) / (2 * _alpha);
            var lambda2 = ((-1) * _beta - Math.Sqrt(_radicand)) / (2 * _alpha);
            var k2 = (_outputVoltageInitialGradient - lambda1 * _outputVoltageInitial + _inputVoltage * lambda1 / _gamma) / (lambda2 - lambda1);
            var k1 = _outputVoltageInitialGradient / lambda1 - lambda2 / lambda1 * k2;
            return k1 * Math.Exp(lambda1 * time) + k2 * Math.Exp(lambda2 * time) + _inputVoltage / _gamma;
        }

        private double CalculateOutputVoltagePeriodic(double time) {
            var a = (-1) * _beta / (2 * _alpha);
            var b = Math.Sqrt((-1) * _radicand) / (2 * _alpha);
            var k1 = _outputVoltageInitial - _inputVoltage / _gamma;
            var k2 = (_outputVoltageInitialGradient - a * k1) / b;
            return k1 * Math.Exp(a * time) * Math.Cos(b * time) + k2 * Math.Exp(a * time) * Math.Sin(b * time) + _inputVoltage / _gamma;
        }

        #endregion
    }
}
