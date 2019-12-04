namespace ConverterSimulation {
    public interface IController {
        bool GetValue(double time);
        double GetNextChangeTime(double fromTime);
    }
}
