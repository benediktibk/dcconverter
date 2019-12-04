using System.Collections.Generic;
using System;

namespace ConverterSimulation {
    public class StepDownConverter {
        #region private variables

        #endregion

        #region constructor

        public StepDownConverter(StepDownConverterParameter parameter) {

        }

        #endregion

        #region public functions

        public List<OutputVoltageAndTime> Simulate(IInputVoltage inputVoltage, IController controller, double time) {
            throw new NotImplementedException();
        }

        #endregion

    }
}
