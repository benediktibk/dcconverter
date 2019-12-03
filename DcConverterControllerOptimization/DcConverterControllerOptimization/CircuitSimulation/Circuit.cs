using System;
using System.Collections.Generic;
using System.Text;

namespace CircuitSimulation
{
    public class Circuit
    {
        #region properties

        public double LoadResistor { get; set; }
        public double SeriesResistor { get; set; }
        public double Inductance { get; set; }
        public double Capacitor { get; set; }
        public double OutputVoltageInitial { get; set; }
        public double OutputVoltageGradientInitial { get; set; }
        public double InputVoltage { get; set; }

        #endregion
    }
}
