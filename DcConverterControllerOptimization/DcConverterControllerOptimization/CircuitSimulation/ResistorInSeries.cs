using System;

namespace CircuitSimulation
{
    public class ResistorInSeries : ICircuit
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;

        #endregion

        #region constructor

        public ResistorInSeries(double loadResistor, double seriesResistor) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double inputVoltage, double outputVoltageInitial) {
            return _loadResistor / (_loadResistor + _seriesResistor) * inputVoltage;
        }

        #endregion
    }
}
