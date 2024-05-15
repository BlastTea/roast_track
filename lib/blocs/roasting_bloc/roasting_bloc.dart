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
      _currentRoasting = Roasting(orderId: event.orderId);

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

        NavigationHelper.toReplacement(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => RoastingResultPage(
              roasting: _currentRoasting,
              degrees: _degrees,
            ),
          ),
        );
      } else {
        _stopwatch.start();
        _currentTimer = Timer.periodic(Durations.extralong4, (timer) => add(SetRoastingState()));
      }
      emit(_roastingDataLoaded);
    });

    on<RoastingButtonPressed>((event, emit) async {
      (String, String)? result = await NavigationHelper.showModalBottomSheet(
        builder: (context) => const InputSheet.doubleNumber(
          decoration: InputDecoration(
            labelText: 'ET',
          ),
          secondaryDecoration: InputDecoration(
            labelText: 'BT',
          ),
        ),
      );

      if (result == null) return;

      _takeIf(event.type);
      _degrees.add(
        Degree(
          envTemp: double.tryParse(result.$1) ?? 0.0,
          beanTemp: double.tryParse(result.$2) ?? 0.0,
          timeElapsed: event.type == DegreeType.charge ? 0 : _stopwatch.elapsedMicroseconds / 1000,
          type: event.type,
        ),
      );

      if (event.type == DegreeType.charge) _stopwatch.reset();

      if (!_stopwatch.isRunning) {
        _stopwatch.start();
        _currentTimer = Timer.periodic(Durations.extralong4, (timer) => add(SetRoastingState()));
      }

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
