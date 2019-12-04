namespace ConverterSimulation {
    public class StepDownConverterParameter {
        #region properties

        public double Inductance { get; set; }
        public double SeriesResistor { get; set; }
        public double Capacitor { get; set; }
        public double LoadResistor { get; set; }
        public double IgbtForwardVoltage { get; set; }
        public double DiodeForwardVoltage { get; set; }

        #endregion
    }
}
