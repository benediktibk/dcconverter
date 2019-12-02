using System;

namespace CircuitSimulation
{
    public class ResistorInSeriesAndCapacitor : ICircuit
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;
        private readonly double _capacitor;
        private readonly double _outputVoltageInitial;

        #endregion

        #region constructor

        public ResistorInSeriesAndCapacitor(double loadResistor, double seriesResistor, double capacitor, double outputVoltageInitial) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _capacitor = capacitor;
            _outputVoltageInitial = outputVoltageInitial;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time, double inputVoltage) {
            return _loadResistor / (_loadResistor + _seriesResistor) * inputVoltage;
        }

        #endregion
    }
}
