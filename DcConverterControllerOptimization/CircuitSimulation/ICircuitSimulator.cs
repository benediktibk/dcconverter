namespace CircuitSimulation
{
    interface ICircuitSimulator
    {
        double CalculateOutputVoltage(double time);
        double CalculateOutputVoltageGradient(double time);
    }
}