part of 'fragments.dart';

class ClassificationFragment extends StatelessWidget {
  const ClassificationFragment({super.key});

  @override
  Widget build(BuildContext context) {
    if (MyApp.classificationBloc.state is ClassificationInitial) MyApp.classificationBloc.add(InitializeClassificationData());

    return BlocBuilder<ClassificationBloc, ClassificationState>(
      builder: (context, stateClassification) {
        if (stateClassification is ClassificationDataLoaded) {
          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: ImageContainer.hero(
                      tag: 'Classification image',
                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(kShapeExtraLarge)),
                      image: stateClassification.currentImageData != null ? MemoryImage(stateClassification.currentImageData!) : null,
                      containerIconSize: 96.0,
                      dialogIconSize: 96.0,
                      icon: Icons.image,
                      extendedAppBar: AppBar(
                        title: const Text('Gambar Klasifikasi'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  FloatingActionButton.large(
                    child: const Icon(Icons.camera_alt),
                    onPressed: () => MyApp.classificationBloc.add(TakeClassificationPicturePressed()),
                  ),
                  const SizedBox(height: 32.0),
                  const SizedBox(height: 48.0),
                ],
              ),
              AnimatedDraggableScrollableSheet(
                controller: stateClassification.draggableScrollableController,
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
                                onPressed: () => stateClassification.draggableScrollableController.animateTo(48.0 / MediaQuery.sizeOf(context).height, duration: Durations.medium2, curve: Curves.fastOutSlowIn),
                                icon: const Icon(Icons.expand_more),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () => stateClassification.draggableScrollableController.animateTo(1.0, duration: Durations.medium2, curve: Curves.fastOutSlowIn),
                                style: TextButton.styleFrom(shape: const LinearBorder()),
                                child: const Text('Hasil Klasifikasi'),
                              ),
                            ),
                            const SizedBox(width: 40.0),
                          ],
                        ),
                      ),
                      stateClassification.classificationResults.isEmpty
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
                                ClassificationResult result = stateClassification.classificationResults[index];

                                return Column(
                                  children: [
                                    ListTile(
                                      title: Text(result.resultLabel?.text ?? '?'),
                                      subtitle: Text(result.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: true) ?? '?'),
                                      trailing: FilledButton(
                                        onPressed: result.id != null ? null : () => MyApp.classificationBloc.add(SaveClassificationPressed(index: index)),
                                        child: const Text('Simpan'),
                                      ),
                                    ),
                                    const Divider(),
                                  ],
                                );
                              },
                              itemCount: stateClassification.classificationResults.length,
                            ),
                    ],
                  ),
                ),
              ),
            ],
          );
        } else if (stateClassification is ClassificationError) {
          return SafeArea(
            child: ErrorOccuredButton(
              onRetryPressed: () => MyApp.classificationBloc.add(InitializeClassificationData()),
            ),
          );
        }

        return const SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
