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
            return GetCompleteResult(fromTime).NextChangeTime;
        }

        public bool GetValue(double time) {
            return GetCompleteResult(time).Value;
        }

        public ControllerResult GetCompleteResult(double time) {
            var remainder = CalculateRemainder(time);
            var onTimeFuzzy = _onTime - _onTime * 1e-5;
            double nextChangeTime;

            if (remainder < onTimeFuzzy) {
                nextChangeTime = time - remainder + _onTime;
            }
            else {
                nextChangeTime = time - remainder + _periodTime;
            }

            var value = remainder < onTimeFuzzy;

            return new ControllerResult { NextChangeTime = nextChangeTime, Value = value };
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
