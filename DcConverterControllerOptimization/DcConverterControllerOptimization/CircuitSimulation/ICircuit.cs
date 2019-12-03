namespace CircuitSimulation
{
    interface ICircuit
    {
        double CalculateOutputVoltage(double time);
        double CalculateOutputVoltageGradient(double time);
    }
}
