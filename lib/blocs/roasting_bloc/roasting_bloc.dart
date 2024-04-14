part of '../blocs.dart';

class RoastingBloc extends Bloc<RoastingEvent, RoastingState> {
  RoastingBloc() : super(RoastingInitial()) {
    on<SetRoastingState>((event, emit) => emit(_roastingDataLoaded));

    on<SetRoastingToInitial>((event, emit) {});

    on<InitializeRoastingData>((event, emit) {
      if (event.animationController != null) _animationController = event.animationController;

      _currentRoasting = Roasting();

      _stopwatch.reset();

      _currentTimer?.cancel();
      _currentTimer = null;

      emit(_roastingDataLoaded);
    });

    on<ToggleRoastingTimer>((event, emit) {
      if (_stopwatch.isRunning) {
        _stopwatch.stop();
        _currentTimer?.cancel();
        _currentTimer = null;
        _animationController?.reverse();
      } else {
        _stopwatch.start();
        _currentTimer = Timer.periodic(Durations.extralong4, (timer) => add(SetRoastingState()));
        _animationController?.forward();
      }
    });

    on<RoastingButtonPressed>((event, emit) async {
      TextEditingController textControllerBt = TextEditingController();

      await NavigationHelper.showDialog(
        builder: (context) => AlertDialog(
          title: Text(event.type.text),
          content: TextField(
            controller: textControllerBt,
            decoration: const InputDecoration(
              labelText: 'BT',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [textFormatterDigitsOnly],
          ),
          actions: [
            TextButton(
              onPressed: () => NavigationHelper.back(),
              child: const Text('Batal'),
            ),
            FilledButton(
              onPressed: () => NavigationHelper.back(),
              child: const Text('Ok'),
            ),
          ],
        ),
      );

      if (textControllerBt.text.trim().isEmpty) return;

      switch (event.type) {
        case DegreeType.charge:
          _degrees.clear();
          _degrees.add(Degree(timeElapsed: _stopwatch.elapsedMicroseconds / 1000));
        case DegreeType.dryEnd:
        case DegreeType.fcStart:
        case DegreeType.fcEnd:
        case DegreeType.scStart:
        case DegreeType.drop:
      }
    });
  }

  AnimationController? _animationController;

  Roasting _currentRoasting = Roasting();

  final List<Degree> _degrees = [];

  final Stopwatch _stopwatch = Stopwatch();

  Timer? _currentTimer;

  RoastingDataLoaded get _roastingDataLoaded => RoastingDataLoaded(
        animationController: _animationController,
        currentRoasting: _currentRoasting,
        timeElapsed: _stopwatch.elapsed,
      );
}
