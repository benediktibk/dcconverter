using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace ConverterSimulation {
    public class OutputVoltageAndTime {
        #region properties

        public double Time { get; set; }
        public double OutputVoltage { get; set; }

        #endregion

        #region public functions

        public static void WriteToCsv(IEnumerable<OutputVoltageAndTime> dataPoints, string fileName) {
            using (var file = new StreamWriter(fileName, false)) {
                foreach (var dataPoint in dataPoints) {
                    file.WriteLine($"{dataPoint.Time};{dataPoint.OutputVoltage}");
                }
            }
        }

        public static List<OutputVoltageAndTime> ReadFromCsv(string fileName) {
            using (var file = new StreamReader(fileName)) {
                var result = new List<OutputVoltageAndTime>();

                while (!file.EndOfStream) {
                    var line = file.ReadLine();
                    var match = Regex.Match(line, @"[^;]*;[^;]*");

                    var time = double.Parse(match.Groups[1].Value);
                    var value = double.Parse(match.Groups[2].Value);
                    result.Add(new OutputVoltageAndTime() { Time = time, OutputVoltage = value });
                }

                return result;
            }
        }

        public static List<Tuple<OutputVoltageAndTime, OutputVoltageAndTime>> MatchClosestTimesOfSecondOne(IEnumerable<OutputVoltageAndTime> first, IEnumerable<OutputVoltageAndTime> second) {
            var firstSorted = first.ToList();
            firstSorted.Sort((x, y) => x.Time.CompareTo(y.Time));
            var secondSorted = second.ToList();
            secondSorted.Sort((x, y) => x.Time.CompareTo(y.Time));
            var result = new List<Tuple<OutputVoltageAndTime, OutputVoltageAndTime>>(first.Count());

            var secondPosition = 0;
            for (var i = 0; i < firstSorted.Count(); ++i) {
                while (
                    secondPosition + 1 < secondSorted.Count() &&
                    secondSorted[secondPosition + 1].Time < firstSorted[i].Time) {
                    secondPosition++;
                }

                if (
                    secondPosition + 1 < secondSorted.Count() &&
                    Math.Abs(firstSorted[i].Time - secondSorted[secondPosition].Time) > Math.Abs(firstSorted[i].Time - secondSorted[secondPosition + 1].Time)) {
                    secondPosition++;
                }

                result.Add(new Tuple<OutputVoltageAndTime, OutputVoltageAndTime>(firstSorted[i], secondSorted[secondPosition]));
            }

            return result;
        }

        #endregion
    }
}
