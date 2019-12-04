using System;

namespace CircuitSimulation
{
    public class ResistorInSeriesAndCapacitorCircuitSimulator : ICircuitSimulator
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;
        private readonly double _capacitor;
        private readonly double _outputVoltageInitial;
        private readonly double _inputVoltage;

        #endregion

        #region constructor

        public ResistorInSeriesAndCapacitorCircuitSimulator(double loadResistor, double seriesResistor, double capacitor, double outputVoltageInitial, double inputVoltage) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _capacitor = capacitor;
            _outputVoltageInitial = outputVoltageInitial;
            _inputVoltage = inputVoltage;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            var lambda = (-1) * (_seriesResistor + _loadResistor) / (_seriesResistor * _loadResistor * _capacitor);
            var offset = _loadResistor * _inputVoltage / (_seriesResistor + _loadResistor);
            var k = _outputVoltageInitial - offset;
            return k * Math.Exp(lambda * time) + offset;
        }

        public double CalculateOutputVoltageGradient(double time) => throw new NotImplementedException();

        #endregion
    }
}
