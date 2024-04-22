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
                  SizedBox(
                    height: 40.0 + 16.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Flexible(
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: TextEditingController(
                                        text: [
                                      '${stateRoastingResult.degrees.isEmpty ? '0.0' : stateRoastingResult.degrees.last.envTemp ?? '0.0'}',
                                      '${stateRoastingResult.degrees.isEmpty ? '0.0' : stateRoastingResult.degrees.last.beanTemp ?? '0.0'}',
                                      '0.0',
                                    ][index]),
                                    decoration: InputDecoration(
                                      labelText: [
                                        'ET',
                                        'BT',
                                        'Δ BT',
                                      ][index],
                                      contentPadding: const EdgeInsets.fromLTRB(20.0, 4.0, 4.0, 4.0),
                                    ),
                                    readOnly: true,
                                  ),
                                ),
                                if (index < 2) const SizedBox(width: 6.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoastingResultChart(
                      roasting: stateRoastingResult.roasting,
                      degrees: stateRoastingResult.degrees,
                    ),
                  ),
                  SizedBox(
                    height: 20.0 + 32.0 + 16.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: List.generate(
                          2,
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
                                if (index < 1) const SizedBox(width: 6.0)
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
