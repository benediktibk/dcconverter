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
    }
}
