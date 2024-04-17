part of '../pages.dart';

class RoastingResultPage extends StatelessWidget {
  const RoastingResultPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<RoastingResultBloc, RoastingResultState>(
        builder: (context, stateRoastingResult) {
          if (stateRoastingResult is RoastingResultDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Hasil roasting'),
                centerTitle: true,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: SfCartesianChart(
                      trackballBehavior: TrackballBehavior(
                        enable: true,
                      ),
                      series: [
                        LineSeries<Degree, double>(
                          dataSource: stateRoastingResult.degrees,
                          xValueMapper: (datum, index) => datum.timeElapsed! / 1000,
                          yValueMapper: (datum, index) => datum.beanTemp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0 + 32.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: List.generate(
                          1,
                          (index) => Flexible(
                            fit: FlexFit.tight,
                            child: Row(
                              children: [
                                Expanded(
                                  child: FilledButton.tonal(
                                    onPressed: [
                                      null,
                                      () => MyApp.roastingResultBloc.add(TakePicturePressed()),
                                    ][index],
                                    child: Text(['Simpan', 'Ambil gambar'][index]),
                                  ),
                                ),
                                // if (index < 1) const SizedBox(width: 6.0)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (stateRoastingResult is RoastingResultError) {}

          return Scaffold(
            appBar: AppBar(
              title: const Text('Hasil roasting'),
              centerTitle: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
