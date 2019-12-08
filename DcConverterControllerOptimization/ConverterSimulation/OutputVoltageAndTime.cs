using System.Collections.Generic;

namespace ConverterSimulation {
    public class OutputVoltageAndTime {
        #region properties

        public double Time { get; set; }
        public double OutputVoltage { get; set; }

        #endregion

        #region public functions

        public static void WriteToCsv(IEnumerable<OutputVoltageAndTime> dataPoints, string fileName) {
            using (var file = new System.IO.StreamWriter(fileName, false)) {
                foreach (var dataPoint in dataPoints) {
                    file.WriteLine($"{dataPoint.Time};{dataPoint.OutputVoltage}");
                }
            }
        }

        #endregion
    }
}
