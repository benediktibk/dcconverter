using System;

namespace CircuitSimulation
{
    public class ResistorInSeriesAndInductance : ICircuit
    {
        #region private variables

        private readonly double _loadResistor;
        private readonly double _seriesResistor;
        private readonly double _inductance;
        private readonly double _outputVoltageInitial;
        private readonly double _inputVoltage;

        #endregion

        #region constructor

        public ResistorInSeriesAndInductance(double loadResistor, double seriesResistor, double inductance, double outputVoltageInitial, double inputVoltage) {
            _loadResistor = loadResistor;
            _seriesResistor = seriesResistor;
            _inductance = inductance;
            _outputVoltageInitial = outputVoltageInitial;
            _inputVoltage = inputVoltage;
        }

        #endregion

        #region public functions

        public double CalculateOutputVoltage(double time) {
            return 0;
        }

        #endregion
    }
}
