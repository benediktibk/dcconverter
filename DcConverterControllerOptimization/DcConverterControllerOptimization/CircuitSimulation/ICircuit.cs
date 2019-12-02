using System;
using System.Collections.Generic;
using System.Text;

namespace CircuitSimulation
{
    interface ICircuit
    {
        double CalculateOutputVoltage(double inputVoltage, double outputVoltageInitial);
    }
}
