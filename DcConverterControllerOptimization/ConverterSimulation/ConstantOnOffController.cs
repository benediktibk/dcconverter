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
            var remainder = CalculateRemainder(fromTime);
            var onTimeFuzzy = _onTime - _onTime * 1e-5;
            double result;

            if (remainder < onTimeFuzzy) {
                result = fromTime - remainder + _onTime;
            }
            else {
                result = fromTime - remainder + _periodTime;
            }

            return result;
        }

        public bool GetValue(double time) {
            var remainder = CalculateRemainder(time);
            var onTimeFuzzy = _onTime - _onTime * 1e-5;
            return remainder < onTimeFuzzy;
        }

        #endregion

        #region private functions

        private double CalculateRemainder(double time) {
            var quotientDouble = time / _periodTime;
            var quotient = (int)quotientDouble;
            var quotientDifference = quotientDouble - quotient;

            if (quotientDifference > 1 - 1e-5) {
                quotient++;
            }

            return time - quotient * _periodTime;
        }

        #endregion
    }
}
