part of '../pages.dart';

class RoastingResultPage extends StatefulWidget {
  const RoastingResultPage({
    super.key,
    required this.roasting,
    required this.degrees,
  })  : classificationResults = null,
        readOnly = false;

  const RoastingResultPage.readOnly({
    super.key,
    required this.roasting,
    required this.degrees,
    required this.classificationResults,
  }) : readOnly = true;

  final Roasting roasting;
  final List<Degree> degrees;
  final List<ClassificationRoastingResult>? classificationResults;
  final bool readOnly;

  @override
  State<RoastingResultPage> createState() => _RoastingResultPageState();
}

class _RoastingResultPageState extends State<RoastingResultPage> {
  @override
  void initState() {
    super.initState();
    MyApp.roastingResultBloc.add(InitializeRoastingResultData(
      roasting: widget.roasting,
      degrees: widget.degrees,
      classificationResults: widget.classificationResults,
    ));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<RoastingResultBloc, RoastingResultState>(
        builder: (context, stateRoastingResult) {
          if (stateRoastingResult is RoastingResultDataLoaded) {
            return Stack(
              children: [
                Scaffold(
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
                      if (!widget.readOnly)
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
                                            stateRoastingResult.roasting.id != null ? null : () => MyApp.roastingResultBloc.add(SaveRoastingResultPressed()),
                                            stateRoastingResult.roasting.id == null ? null : () => MyApp.roastingResultBloc.add(TakeRoastingResultPicturePressed()),
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
                      const SizedBox(height: 48.0),
                    ],
                  ),
                ),
                AnimatedDraggableScrollableSheet(
                  controller: stateRoastingResult.draggableScrollableController,
                  minChildSize: 48.0 / MediaQuery.sizeOf(context).height,
                  initialChildSize: 48.0 / MediaQuery.sizeOf(context).height,
                  snap: true,
                  builder: (context, scrollController, animation, animatedDraggables) => DraggableScrollableBody(
                    themeMode: MWidget.themeValue.themeMode,
                    child: CustomScrollView(
                      controller: scrollController,
                      slivers: [
                        SliverToBoxAdapter(child: SizedBox(height: MediaQuery.viewPaddingOf(context).top * animation.value)),
                        SliverToBoxAdapter(
                          child: Row(
                            children: [
                              AnimatedBuilder(
                                animation: animation,
                                builder: (context, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                                child: IconButton(
                                  onPressed: () => stateRoastingResult.draggableScrollableController.animateTo(48.0 / MediaQuery.sizeOf(context).height, duration: Durations.medium2, curve: Curves.fastOutSlowIn),
                                  icon: const Icon(Icons.expand_more),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () => stateRoastingResult.draggableScrollableController.animateTo(1.0, duration: Durations.medium2, curve: Curves.fastOutSlowIn),
                                  style: TextButton.styleFrom(shape: const LinearBorder()),
                                  child: const Text('Hasil Klasifikasi'),
                                ),
                              ),
                              const SizedBox(width: 40.0),
                            ],
                          ),
                        ),
                        stateRoastingResult.classificationResults.isEmpty
                            ? SliverFillRemaining(
                                hasScrollBody: false,
                                child: Center(
                                  child: Text(
                                    'Tidak ada data',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              )
                            : SliverList.builder(
                                itemBuilder: (context, index) {
                                  ClassificationRoastingResult result = stateRoastingResult.classificationResults[index];

                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(result.resultLabel?.text ?? '?'),
                                        subtitle: Text(result.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: true) ?? '?'),
                                        trailing: widget.readOnly
                                            ? null
                                            : FilledButton(
                                                onPressed: result.id != null ? null : () => MyApp.roastingResultBloc.add(SaveRoastingClassificationResultPressed(index: index)),
                                                child: const Text('Simpan'),
                                              ),
                                      ),
                                      const Divider(),
                                    ],
                                  );
                                },
                                itemCount: stateRoastingResult.classificationResults.length,
                              ),
                      ],
                    ),
                  ),
                ),
              ],
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
