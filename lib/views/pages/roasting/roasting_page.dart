part of '../pages.dart';

class RoastingPage extends StatefulWidget {
  const RoastingPage({super.key});

  @override
  State<RoastingPage> createState() => _RoastingPageState();
}

class _RoastingPageState extends State<RoastingPage> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    MyApp.roastingBloc.add(InitializeRoastingData(animationController: AnimationController(vsync: this, duration: Durations.medium2)));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<RoastingBloc, RoastingState>(
        builder: (context, stateRoasting) {
          if (stateRoasting is RoastingDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton.filledTonal(
                    onPressed: () => MyApp.roastingBloc.add(ToggleRoastingTimer()),
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: Tween<double>(begin: 0.0, end: 1.0).animate(stateRoasting.animationController!),
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
                                      controller: TextEditingController(text: '0.0'),
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
                        degreeData: [],
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
            );
          }

          return const Scaffold();
        },
      );
}
