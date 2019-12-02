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
        private readonly double _inputVoltage;

        #endregion

        #region constructor

        public ResistorInSeriesAndCapacitor(double loadResistor, double seriesResistor, double capacitor, double outputVoltageInitial, double inputVoltage) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _capacitor = capacitor;
            _outputVoltageInitial = outputVoltageInitial;
            _inputVoltage = inputVoltage;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            var lambda = 1 / (_capacitor * _seriesResistor) + 1 / (_capacitor * _loadResistor);
            var offset = _loadResistor * inputVoltage
        }

        #endregion
    }
}
