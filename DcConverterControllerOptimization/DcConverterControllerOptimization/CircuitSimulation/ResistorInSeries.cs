using System;

namespace CircuitSimulation
{
    public class ResistorInSeries : ICircuit
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;
        private readonly double _inputVoltage;

        #endregion

        #region constructor

        public ResistorInSeries(double loadResistor, double seriesResistor, double inputVoltage) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _inputVoltage = inputVoltage;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            return _loadResistor / (_loadResistor + _seriesResistor) * _inputVoltage;
        }

        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion
    }
}
