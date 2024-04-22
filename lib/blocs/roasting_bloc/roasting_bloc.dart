part of '../blocs.dart';

class RoastingBloc extends Bloc<RoastingEvent, RoastingState> {
  RoastingBloc() : super(RoastingInitial()) {
    on<SetRoastingState>((event, emit) => emit(_roastingDataLoaded));

    on<SetRoastingToInitial>((event, emit) {
      _currentRoasting = Roasting();

      _degrees.clear();

      _lastDegree = DegreeType.charge;

      _stopwatch.reset();
      _stopwatch.stop();

      _currentTimer?.cancel();
      _currentTimer = null;

      emit(RoastingInitial());
    });

    on<InitializeRoastingData>((event, emit) {
      _currentRoasting = Roasting();

      _degrees.clear();

      _lastDegree = DegreeType.charge;

      _stopwatch.reset();
      _stopwatch.stop();

      _currentTimer?.cancel();
      _currentTimer = null;

      emit(_roastingDataLoaded);
    });

    on<ToggleRoastingTimer>((event, emit) {
      if (_stopwatch.isRunning) {
        _stopwatch.stop();
        _currentTimer?.cancel();
        _currentTimer = null;

        _currentRoasting.roasteryId = currentUser?.id;
        _currentRoasting.unit = UnitType.celcius;
        _currentRoasting.timeElapsed = _stopwatch.elapsedMicroseconds / 1000;

        MyApp.roastingResultBloc.add(
          InitializeRoastingResultData(
            roasting: kDebugMode
                ? Roasting(
                    roasteryId: currentUser?.id,
                    unit: UnitType.celcius,
                    timeElapsed: 110000,
                  )
                : _currentRoasting,
            degrees: kDebugMode
                ? List.generate(
                    6,
                    (index) => Degree(
                      beanTemp: [90.0, 200.0, 180.0, 150.0, 186.0, 185.0][index],
                      type: DegreeType.fromValue(index),
                      timeElapsed: [0.0, 10000.0, 31000.0, 45000.0, 56000.0, 100000.0][index],
                    ),
                  )
                : _degrees,
          ),
        );

        NavigationHelper.toReplacement(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => const RoastingResultPage(),
          ),
        );
      } else {
        _stopwatch.start();
        _currentTimer = Timer.periodic(Durations.extralong4, (timer) => add(SetRoastingState()));
      }
      emit(_roastingDataLoaded);
    });

    on<RoastingButtonPressed>((event, emit) async {
      double? bt = await NavigationHelper.showModalBottomSheet(
        builder: (context) => const InputSheet.number(
          decoration: InputDecoration(
            labelText: 'BT',
          ),
        ),
      ).then((value) => value != null ? double.tryParse(value) : null);

      if (bt == null) return;

      _takeIf(event.type);
      _degrees.add(
        Degree(
          beanTemp: bt,
          timeElapsed: event.type == DegreeType.charge ? 0 : _stopwatch.elapsedMicroseconds / 1000,
          type: event.type,
        ),
      );

      if (event.type == DegreeType.charge) _stopwatch.reset();

      _lastDegree = DegreeType.fromValue(event.type.value + 1);

      emit(_roastingDataLoaded);
    });
  }

  Roasting _currentRoasting = Roasting();

  List<Degree> _degrees = [];

  DegreeType? _lastDegree = DegreeType.charge;

  final Stopwatch _stopwatch = Stopwatch();

  Timer? _currentTimer;

  RoastingDataLoaded get _roastingDataLoaded => RoastingDataLoaded(
        currentRoasting: _currentRoasting,
        lastDegree: _lastDegree,
        stopwatch: _stopwatch,
        degrees: _degrees,
        timeElapsed: _stopwatch.elapsed,
      );

  void _takeIf(DegreeType type) => _degrees = _degrees.takeWhile((value) => (value.type?.value ?? 0) < type.value).toList();
}
