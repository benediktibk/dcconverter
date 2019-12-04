namespace ConverterSimulation {
    public class ConstantInputVoltage : IInputVoltage {
        #region private variables

        private readonly double _voltage;

        #endregion

        #region constructor

        public ConstantInputVoltage(double voltage) {
            _voltage = voltage;
        }

        #endregion

        #region public functions

        public double GetNextChangeTime(double fromTime) {
            return double.MaxValue;
        }

        public double GetValue(double time) {
            return _voltage;
        }

        public InputVoltageResult GetCompleteResult(double time) {
            return new InputVoltageResult { NextChangeTime = GetNextChangeTime(time), Value = GetValue(time) };
        }

        #endregion
    }
}
