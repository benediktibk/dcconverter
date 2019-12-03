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
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            var alpha = _inductance * _capacitor;
            var beta = (_inductance + _seriesResistor * _loadResistor * _capacitor) / _loadResistor;
            var gamma = (_loadResistor + _seriesResistor) / _loadResistor;
            var radicand = beta * beta - 4 * alpha * gamma;

            if (radicand > 0)
                return CalculateOutputVoltageAperiodic(time, alpha, beta, gamma, radicand);
            else
                return CalculateOutputVoltagePeriodic(time, alpha, beta, gamma, radicand);
        }

        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion

        #region private functions

        private double CalculateOutputVoltageAperiodic(double time, double alpha, double beta, double gamma, double radicand) {
            var lambda1 = ((-1) * beta + Math.Sqrt(radicand)) / (2 * alpha);
            var lambda2 = ((-1) * beta - Math.Sqrt(radicand)) / (2 * alpha);
            var k2 = (_outputVoltageInitialGradient - lambda1 * _outputVoltageInitial + _inputVoltage * lambda1 / gamma) / (lambda2 - lambda1);
            var k1 = _outputVoltageInitialGradient / lambda1 - lambda2 / lambda1 * k2;
            return k1 * Math.Exp(lambda1 * time) + k2 * Math.Exp(lambda2 * time) + _inputVoltage / gamma;
        }

        private double CalculateOutputVoltagePeriodic(double time, double alpha, double beta, double gamma, double radicand) {
            var a = (-1) * beta / (2 * alpha);
            var b = Math.Sqrt((-1) * radicand) / (2 * alpha);
            var k1 = _outputVoltageInitial - _inputVoltage / gamma;
            var k2 = (_outputVoltageInitialGradient - a * k1) / b;
            return k1 * Math.Exp(a * time) * Math.Cos(b * time) + k2 * Math.Exp(a * time) * Math.Sin(b * time) + _inputVoltage / gamma;
        }

        #endregion
    }
}
