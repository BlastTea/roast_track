part of 'widgets.dart';

class RoastingResultChart extends StatelessWidget {
  const RoastingResultChart({
    super.key,
    required this.roasting,
    required this.degrees,
  });

  final Roasting roasting;
  final List<Degree> degrees;

  String formatDuration(int totalSeconds) => '${(totalSeconds ~/ 60).toString().padLeft(2, '0')}:${(totalSeconds % 60).toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) => SfCartesianChart(
        primaryXAxis: NumericAxis(
          maximum: roasting.timeElapsed! / 1000,
          axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel(formatDuration(double.parse(axisLabelRenderArgs.text).toInt()), axisLabelRenderArgs.textStyle),
        ),
        trackballBehavior: TrackballBehavior(
          enable: true,
          activationMode: ActivationMode.singleTap,
          builder: (context, trackballDetails) => Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(kShapeSmall),
            ),
            child: Text('${(((trackballDetails.series as LineSeriesRenderer).dataSource as List<Degree>).trySingleWhere((element) => element.timeElapsed! / 1000 == trackballDetails.point!.x))?.type?.text}\n${trackballDetails.point!.y}°${roasting.unit == UnitType.celcius ? 'C' : 'F'}\n${formatDuration((trackballDetails.point!.x as double).toInt())}'),
          ),
        ),
        series: [
          LineSeries<Degree, double>(
            dataSource: degrees,
            xValueMapper: (datum, index) => datum.timeElapsed! / 1000,
            yValueMapper: (datum, index) => datum.beanTemp,
          ),
          LineSeries<Degree, double>(
            dataSource: degrees,
            xValueMapper: (datum, index) => datum.timeElapsed! / 1000,
            yValueMapper: (datum, index) => datum.envTemp,
          ),
        ],
      );
}
