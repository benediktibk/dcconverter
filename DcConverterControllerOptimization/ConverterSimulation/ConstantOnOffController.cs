using System;

namespace ConverterSimulation {
    public class ConstantOnOffController : IController {
        #region private variables

        private readonly double _onTime;
        private readonly double _periodTime;

        #endregion

        #region constructor

        public ConstantOnOffController(double onTime, double offTime) {
            if (onTime <= 0) {
                throw new ArgumentException("onTime");
            }
            if (offTime <= 0) {
                throw new ArgumentException("onTime");
            }
            _onTime = onTime;
            _periodTime = onTime + offTime;
        }

        #endregion

        #region public functions

        public double GetNextChangeTime(double fromTime) {
            var quotient = (int)(fromTime / _periodTime);
            var remainder = fromTime - quotient * _periodTime;
            return
                remainder < _onTime - _onTime * 1e-4 ?
                    fromTime - remainder + _onTime :
                    fromTime - remainder + _periodTime;
        }

        public bool GetValue(double time) {
            var quotient = (int)(time / _periodTime);
            var remainder = time - quotient * _periodTime;
            return remainder < _onTime;
        }

        #endregion
    }
}
