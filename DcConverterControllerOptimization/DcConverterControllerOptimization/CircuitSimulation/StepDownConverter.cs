using System;

namespace CircuitSimulation
{
    public class StepDownConverter : ICircuit
    {
        #region private variables

        private readonly ICircuit _internalCircuit;

        #endregion

        #region constructor

        public StepDownConverter(double loadResistor, double seriesResistor, double capacitor, double inductance, double outputVoltageInitial, double outputVoltageInitialGradient, double inputVoltage) {
            var alpha = inductance * capacitor;
            var beta = (inductance + seriesResistor * loadResistor * capacitor) / loadResistor;
            var gamma = (loadResistor + seriesResistor) / loadResistor;
            var radicand = beta * beta - 4 * alpha * gamma;

            if (radicand > 0)
                _internalCircuit = new StepDownConverterAperiodic(outputVoltageInitial, outputVoltageInitialGradient, inputVoltage, alpha, beta, gamma, radicand);
            else if (radicand < 0)
                _internalCircuit = new StepDownConverterPeriodic(outputVoltageInitial, outputVoltageInitialGradient, inputVoltage, alpha, beta, gamma, radicand);
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
