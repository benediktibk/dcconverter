namespace ConverterSimulation {
    public interface IInputVoltage {
        double GetValue(double time);
        double GetNextChangeTime(double fromTime);
    }
}
