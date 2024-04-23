part of '../pages.dart';

class RoastingPage extends StatefulWidget {
  const RoastingPage({
    super.key,
    required this.orderId,
  });

  final int orderId;

  @override
  State<RoastingPage> createState() => _RoastingPageState();
}

class _RoastingPageState extends State<RoastingPage> {
  @override
  void initState() {
    super.initState();
    MyApp.roastingBloc.add(InitializeRoastingData(orderId: widget.orderId));
  }

  ButtonStyle? _getEffectiveButtonStyle({required int index, required DegreeType? type}) => index >= (type?.value ?? 99)
      ? null
      : FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
          foregroundColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.38),
          elevation: 0,
        );

  @override
  Widget build(BuildContext context) => BlocBuilder<RoastingBloc, RoastingState>(
        builder: (context, stateRoasting) {
          if (stateRoasting is RoastingDataLoaded) {
            return PopScope(
              onPopInvoked: (didPop) => MyApp.roastingBloc.add(SetRoastingToInitial()),
              child: Scaffold(
                appBar: AppBar(
                  actions: [
                    AnimatedSwitcher(
                      duration: Durations.medium2,
                      transitionBuilder: (child, animation) => FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(
                          scale: animation,
                          child: RotationTransition(
                            turns: animation,
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          ),
                        ),
                      ),
                      child: IconButton.filledTonal(
                        key: ValueKey(stateRoasting.stopwatch.isRunning),
                        onPressed: () => MyApp.roastingBloc.add(ToggleRoastingTimer()),
                        icon: Icon(stateRoasting.stopwatch.isRunning ? Icons.stop : Icons.play_arrow),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '${stateRoasting.timeElapsed.inMinutes.toString().padLeft(2, '0')}:${(stateRoasting.timeElapsed.inSeconds - 60 * stateRoasting.timeElapsed.inMinutes).toString().padLeft(2, '0')}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(width: 16.0),
                  ],
                ),
                body: SafeArea(
                  child: Column(
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
                                          '${stateRoasting.degrees.isEmpty ? '0.0' : stateRoasting.degrees.last.envTemp ?? '0.0'}',
                                          '${stateRoasting.degrees.isEmpty ? '0.0' : stateRoasting.degrees.last.beanTemp ?? '0.0'}',
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
                        child: RoastingChart(
                          degreeData: stateRoasting.degrees,
                          duration: stateRoasting.timeElapsed,
                        ),
                      ),
                      SizedBox(
                        // First row+Second row, top and bottom padding, space between first and second row
                        height: 80.0 + 32.0 + 8.0,
                        child: Column(
                          children: [
                            // First row
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
                              child: Row(
                                children: List.generate(
                                  3,
                                  (index) => Flexible(
                                    fit: FlexFit.tight,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: [DegreeType.charge, DegreeType.dryEnd, DegreeType.fcStart]
                                              .map(
                                                (e) => FilledButton.tonal(
                                                  onPressed: () => MyApp.roastingBloc.add(RoastingButtonPressed(type: e)),
                                                  style: _getEffectiveButtonStyle(index: index, type: stateRoasting.lastDegree),
                                                  child: Text(e.text),
                                                ),
                                              )
                                              .toList()[index],
                                        ),
                                        if (index < 2) const SizedBox(width: 6.0),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            // Second row
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                children: List.generate(
                                  3,
                                  (index) => Flexible(
                                    fit: FlexFit.tight,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: [DegreeType.fcEnd, DegreeType.scStart, DegreeType.drop]
                                                .map(
                                                  (e) => FilledButton.tonal(
                                                    onPressed: () => MyApp.roastingBloc.add(RoastingButtonPressed(type: e)),
                                                    style: _getEffectiveButtonStyle(index: index + 3, type: stateRoasting.lastDegree),
                                                    child: Text(e.text),
                                                  ),
                                                )
                                                .toList()[index]),
                                        if (index < 2) const SizedBox(width: 8.0),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          return const Scaffold();
        },
      );
}
