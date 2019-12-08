using CircuitSimulation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FluentAssertions;
using System.Collections.Generic;
using ConverterSimulation;
using System.Linq;
using System;

namespace CircuitSimulationTest
{
    [TestClass]
    public class StepDownConverterCircuitSimulatorTest {
        private CircuitParameter _aperiodicCircuit;
        private CircuitParameter _periodicCircuit;
        private CircuitParameter _realisticCircuit;

        [TestInitialize]
        public void Setup() {
            _aperiodicCircuit = new CircuitParameter {
                LoadResistor = 2,
                SeriesResistor = 3,
                Capacitor = 0.220,
                Inductance = 0.100,
                OutputVoltageInitial = 0,
                OutputVoltageGradientInitial = 0,
                InputVoltage = 10
            };

            _periodicCircuit = new CircuitParameter {
                LoadResistor = 2,
                SeriesResistor = 0.2,
                Capacitor = 0.220,
                Inductance = 0.900,
                OutputVoltageInitial = 0,
                OutputVoltageGradientInitial = 0,
                InputVoltage = 10
            };

            _realisticCircuit = new CircuitParameter {
                LoadResistor = 10,
                SeriesResistor = 0.4,
                Capacitor = 100e-6,
                Inductance = 2e-3,
                OutputVoltageInitial = 0,
                OutputVoltageGradientInitial = 0,
                InputVoltage = 17.7
            };
        }

        [TestMethod]
        public void CalculateOutputVoltage_Periodic0InitialVoltageAnd894ms_CorrectVoltage() {
            var circuit = new StepDownConverterCircuitSimulator(_periodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.894518705);

            outputVoltage.Should().BeApproximately(7.91872, 3e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Periodic2InitialVoltageAnd507ms_CorrectVoltage() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_periodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.507509959);

            outputVoltage.Should().BeApproximately(5.107602, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Aperiodic0InitialVoltageAnd407ms_CorrectVoltage() {
            var circuit = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.40718702);

            outputVoltage.Should().BeApproximately(3.09207, 2e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Aperiodic2InitialVoltageAnd237ms_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.237048577);

            outputVoltage.Should().BeApproximately(3.100989, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd237ms_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_aperiodicCircuit);
            var time = 0.237048577;
            var outputVoltageAtSameTime = circuit.CalculateOutputVoltage(time);
            var timeLater = time + 1e-5;
            var outputVoltageLater = circuit.CalculateOutputVoltage(timeLater);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(time);

            var gradientShouldBe = (outputVoltageLater - outputVoltageAtSameTime) / (timeLater - time);
            outputVoltageGradient.Should().BeApproximately(gradientShouldBe, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint1_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverterCircuitSimulator(_aperiodicCircuit);
            _aperiodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _aperiodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _aperiodicCircuit.InputVoltage = 5;
            var circuitOff = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.473240 - 0.2);

            outputVoltage.Should().BeApproximately(2.432765, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint2_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverterCircuitSimulator(_aperiodicCircuit);
            _aperiodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _aperiodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _aperiodicCircuit.InputVoltage = 5;
            var circuitOff = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.201000 - 0.2);

            outputVoltage.Should().BeApproximately(2.959440, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltage_AperiodicWithPulsePoint3_CorrectVoltage() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltage = circuitOn.CalculateOutputVoltage(0.170150);

            outputVoltage.Should().BeApproximately(2.823536, 3e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_PeriodicWithPulse_CorrectVoltage() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuitOn = new StepDownConverterCircuitSimulator(_periodicCircuit);
            _periodicCircuit.OutputVoltageInitial = circuitOn.CalculateOutputVoltage(0.2);
            _periodicCircuit.OutputVoltageGradientInitial = circuitOn.CalculateOutputVoltageGradient(0.2);
            _periodicCircuit.InputVoltage = 2.2;
            var circuitOff = new StepDownConverterCircuitSimulator(_periodicCircuit);

            var outputVoltage = circuitOff.CalculateOutputVoltage(0.765300 - 0.2);

            outputVoltage.Should().BeApproximately(3.66616, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd0s_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(0);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Periodic2InitialVoltageAnd0s_CorrectVoltageGradient() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_periodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(0);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Aperiodic2InitialVoltageAnd1000s_CorrectVoltageGradient() {
            _aperiodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_aperiodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(1000);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Periodic2InitialVoltageAnd1000s_CorrectVoltageGradient() {
            _periodicCircuit.OutputVoltageInitial = 2;
            var circuit = new StepDownConverterCircuitSimulator(_periodicCircuit);

            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(1000);

            outputVoltageGradient.Should().BeApproximately(0, 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Realistic20us_CorrectVoltage() {
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(20e-6);

            outputVoltage.Should().BeApproximately(17.545156e-3, 2e-4);
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Realistic20us_CorrectVoltageGradient() {
            _realisticCircuit.InputVoltage = 20;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);
            var timeFirstValue = 20e-6;
            var timeSecondValue = 20.001e-6;

            var outputVoltageFirst = circuit.CalculateOutputVoltage(timeFirstValue);
            var outputVoltageSecond = circuit.CalculateOutputVoltage(timeSecondValue);
            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(timeFirstValue);

            var firstValue = 19.832994e-3;
            var secondValue = 19.834972e-3;
            outputVoltageFirst.Should().BeApproximately(firstValue, 1e-4);
            outputVoltageSecond.Should().BeApproximately(secondValue, 1e-4);
            outputVoltageGradient.Should().BeApproximately((secondValue - firstValue)/(timeSecondValue - timeFirstValue), 1e-4);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Realistic_CorrectVoltageCurve() {
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);
            var results = new List<OutputVoltageAndTime>();

            for (var time = 0.0; time <= 10e-3; time += 1e-9) {
                var value = circuit.CalculateOutputVoltage(time);
                results.Add(new OutputVoltageAndTime { Time = time, OutputVoltage = value });
            }

            var expectedResults = OutputVoltageAndTime.ReadFromCsv("testdata/StepDownConverterRealisticValues.csv");
            var expectedResultsCombined = OutputVoltageAndTime.MatchClosestTimesOfSecondOne(results, expectedResults);

            foreach (var result in expectedResultsCombined) {
                result.Item1.OutputVoltage.Should().BeApproximately(result.Item2.OutputVoltage, 1e-6);
            }
        }

        [TestMethod]
        public void CalculateOutputVoltageGradient_Realistic700us_CorrectVoltageGradient() {
            _realisticCircuit.InputVoltage = 20;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);
            var timeFirstValue = 700e-6;
            var timeSecondValue = 700.000001e-6;

            var outputVoltageFirst = circuit.CalculateOutputVoltage(timeFirstValue);
            var outputVoltageSecond = circuit.CalculateOutputVoltage(timeSecondValue);
            var outputVoltageGradient = circuit.CalculateOutputVoltageGradient(timeFirstValue);

            outputVoltageGradient.Should().BeApproximately((outputVoltageSecond - outputVoltageFirst) / (timeSecondValue - timeFirstValue), 1e-3);
        }

        [TestMethod]
        public void CalculateOutputVoltage_RealisticWithPulse_CorrectVoltage() {
            var circuit1 = new StepDownConverterCircuitSimulator(_realisticCircuit);
            _realisticCircuit.OutputVoltageInitial = circuit1.CalculateOutputVoltage(20e-6);
            _realisticCircuit.OutputVoltageGradientInitial = circuit1.CalculateOutputVoltageGradient(20e-6);
            _realisticCircuit.InputVoltage = -0.67;
            var circuit2 = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit2.CalculateOutputVoltage(134e-6);

            outputVoltage.Should().BeApproximately(180.57507e-3, 2e-4);
        }

        [TestMethod]
        public void CalculateOutputVoltage_RealisticWithPulseInMiddleOfPulse_CorrectVoltage() {
            var circuit1 = new StepDownConverterCircuitSimulator(_realisticCircuit);
            _realisticCircuit.OutputVoltageInitial = circuit1.CalculateOutputVoltage(20e-6);
            _realisticCircuit.OutputVoltageGradientInitial = circuit1.CalculateOutputVoltageGradient(20e-6);
            _realisticCircuit.InputVoltage = -0.67;
            var circuit2 = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit2.CalculateOutputVoltage(86.565217e-6);

            outputVoltage.Should().BeApproximately(121.54345e-3, 2e-4);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Realistic1ms_CorrectVoltage() {
            _realisticCircuit.InputVoltage = 20;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(1e-3);

            outputVoltage.Should().BeApproximately(23.117226, 1e-2);
        }

        [TestMethod]
        public void CalculateOutputVoltage_Realistic100ms_CorrectVoltage() {
            _realisticCircuit.InputVoltage = 20;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.1);

            outputVoltage.Should().BeApproximately(19.23077, 1e-5);
        }

        [TestMethod]
        public void CalculateOutputVoltage_RealisticWithoutSeriesResistor100ms_CorrectVoltage() {
            _realisticCircuit.InputVoltage = 20;
            _realisticCircuit.SeriesResistor = 0;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(0.1);

            outputVoltage.Should().BeApproximately(20, 1e-5);
        }

        [TestMethod]
        public void CalculateOutputVoltage_RealisticWithoutSeriesResistor1ms_CorrectVoltage() {
            _realisticCircuit.InputVoltage = 20;
            _realisticCircuit.SeriesResistor = 0;
            var circuit = new StepDownConverterCircuitSimulator(_realisticCircuit);

            var outputVoltage = circuit.CalculateOutputVoltage(1.4424837e-3);

            outputVoltage.Should().BeApproximately(29.727866, 1e-2);
        }
    }
}
