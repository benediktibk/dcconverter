namespace ConverterSimulation {
    public class ConstantOnOffController : IController {
        #region private variables

        private readonly double _onTime;
        private readonly double _offTime;

        #endregion

        #region constructor

        public ConstantOnOffController(double onTime, double offTime) {
            _onTime = onTime;
            _offTime = offTime;
        }

        #endregion

        #region public functions

        #endregion
    }
}
