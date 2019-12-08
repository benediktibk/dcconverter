using ConverterSimulation;
using FluentAssertions;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System.Linq;

namespace ConverterSimulationTest {
    [TestClass]
    public class OutputVoltageAndTimeTest {
        [TestMethod]
        public void MatchClosestTimesOfSecondOne_TwoEmptyLists_EmptyList() {
            var first = new List<OutputVoltageAndTime>();
            var second = new List<OutputVoltageAndTime>();

            var result = OutputVoltageAndTime.MatchClosestTimesOfSecondOne(first, second);

            result.Count().Should().Be(0);
        }

        [TestMethod]
        public void MatchClosestTimesOfSecondOne_TwiceTheSameList_ItemsInCorrectOrder() {
            var first = new List<OutputVoltageAndTime> {
                new OutputVoltageAndTime { Time = 0, OutputVoltage = 3 },
                new OutputVoltageAndTime { Time = 4, OutputVoltage = 2 },
                new OutputVoltageAndTime { Time = 1, OutputVoltage = 6 }
            };

            var result = OutputVoltageAndTime.MatchClosestTimesOfSecondOne(first, first);

            result.Count().Should().Be(3);
            result[0].Item1.Time.Should().Be(0);
            result[0].Item1.OutputVoltage.Should().Be(3);
            result[0].Item2.Time.Should().Be(0);
            result[0].Item2.OutputVoltage.Should().Be(3);
            result[1].Item1.Time.Should().Be(1);
            result[1].Item1.OutputVoltage.Should().Be(6);
            result[1].Item2.Time.Should().Be(1);
            result[1].Item2.OutputVoltage.Should().Be(6);
            result[2].Item1.Time.Should().Be(4);
            result[2].Item1.OutputVoltage.Should().Be(2);
            result[2].Item2.Time.Should().Be(4);
            result[2].Item2.OutputVoltage.Should().Be(2);
        }

        [TestMethod]
        public void MatchClosestTimesOfSecondOne_SecondListShorter_ItemsInCorrectOrder() {
            var first = new List<OutputVoltageAndTime> {
                new OutputVoltageAndTime { Time = 0, OutputVoltage = 3 },
                new OutputVoltageAndTime { Time = 4, OutputVoltage = 2 },
                new OutputVoltageAndTime { Time = 1, OutputVoltage = 6 }
            };
            var second = new List<OutputVoltageAndTime> {
                new OutputVoltageAndTime { Time = 0.25, OutputVoltage = 5 },
                new OutputVoltageAndTime { Time = 3.75, OutputVoltage = 1 }
            };

            var result = OutputVoltageAndTime.MatchClosestTimesOfSecondOne(first, second);

            result.Count().Should().Be(3);
            result[0].Item1.Time.Should().Be(0);
            result[0].Item1.OutputVoltage.Should().Be(3);
            result[0].Item2.Time.Should().Be(0.25);
            result[0].Item2.OutputVoltage.Should().Be(5);
            result[1].Item1.Time.Should().Be(1);
            result[1].Item1.OutputVoltage.Should().Be(6);
            result[1].Item2.Time.Should().Be(0.25);
            result[1].Item2.OutputVoltage.Should().Be(5);
            result[2].Item1.Time.Should().Be(4);
            result[2].Item1.OutputVoltage.Should().Be(2);
            result[2].Item2.Time.Should().Be(3.75);
            result[2].Item2.OutputVoltage.Should().Be(1);
        }

        [TestMethod]
        public void MatchClosestTimesOfSecondOne_SecondListLonger_ItemsInCorrectOrder() {
            var first = new List<OutputVoltageAndTime> {
                new OutputVoltageAndTime { Time = 0, OutputVoltage = 3 },
                new OutputVoltageAndTime { Time = 4, OutputVoltage = 2 },
                new OutputVoltageAndTime { Time = 1, OutputVoltage = 6 }
            };
            var second = new List<OutputVoltageAndTime> {
                new OutputVoltageAndTime { Time = 0.25, OutputVoltage = 5 },
                new OutputVoltageAndTime { Time = 0.75, OutputVoltage = 1 },
                new OutputVoltageAndTime { Time = 1.5, OutputVoltage = 9 },
                new OutputVoltageAndTime { Time = 3.75, OutputVoltage = 54 },
                new OutputVoltageAndTime { Time = 9, OutputVoltage = -4 }
            };

            var result = OutputVoltageAndTime.MatchClosestTimesOfSecondOne(first, second);

            result.Count().Should().Be(3);
            result[0].Item1.Time.Should().Be(0);
            result[0].Item1.OutputVoltage.Should().Be(3);
            result[0].Item2.Time.Should().Be(0.25);
            result[0].Item2.OutputVoltage.Should().Be(5);
            result[1].Item1.Time.Should().Be(1);
            result[1].Item1.OutputVoltage.Should().Be(6);
            result[1].Item2.Time.Should().Be(0.75);
            result[1].Item2.OutputVoltage.Should().Be(1);
            result[2].Item1.Time.Should().Be(4);
            result[2].Item1.OutputVoltage.Should().Be(2);
            result[2].Item2.Time.Should().Be(3.75);
            result[2].Item2.OutputVoltage.Should().Be(54);
        }
    }
}
