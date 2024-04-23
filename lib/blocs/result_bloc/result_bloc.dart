part of '../blocs.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(ResultInitial()) {
    on<SetResultState>((event, emit) => emit(event.state ?? _resultDataLoaded));

    on<SetResultToInitial>((event, emit) {
      emit(ResultInitial());
    });

    on<InitializeResultData>((event, emit) async {
      if (event.tabController != null) _tabController = event.tabController!..addListener(() => add(SetResultState()));

      if (_isInitializing) {
        event.completer?.complete(false);
        return;
      }

      _isInitializing = true;

      if (event.completer == null) emit(ResultInitial());

      try {
        await _fetchData();
      } catch (e) {
        _isInitializing = false;
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        emit(ResultError());
        return;
      }

      _isInitializing = false;
      event.completer?.complete(true);
      emit(_resultDataLoaded);
    });

    on<SetResultDateTime>((event, emit) async {
      _dateTimeRange = event.value;
      _isLoading = true;
      emit(_resultDataLoaded);

      try {
        await _fetchData();
      } catch (e) {
        _isLoading = false;
        ApiHelper.handleError(e);
        emit(_resultDataLoaded);
        return;
      }

      _isLoading = false;
      emit(_resultDataLoaded);
    });
  }

  late TabController _tabController;

  DateTimeRange _dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now().copyWith(hour: 23, minute: 59, second: 59));

  bool _isInitializing = false;
  bool _isLoading = false;

  List<Order> _orders = [];

  List<ClassificationResult> _classificationResults = [];

  ResultDataLoaded get _resultDataLoaded => ResultDataLoaded(
        tabController: _tabController,
        dateTimeRange: _dateTimeRange,
        isLoading: _isLoading,
        orders: _orders,
        classificationResults: _classificationResults,
      );

  Future<void> _fetchData() async {
    _orders = await ApiHelper.get(
      '/api/v1/orders',
      body: {
        'status': 'done',
        'with_degrees': true,
        'start_date': _dateTimeRange.start.toIso8601String(),
        'finish_date': _dateTimeRange.end.toIso8601String(),
      },
    ).then((value) => (value['data'] as List).map((e) => Order.fromJson(e)).toList());

    _classificationResults = await ApiHelper.get(
      '/api/v1/classifications',
      body: {
        'start_date': _dateTimeRange.start.toIso8601String(),
        'finish_date': _dateTimeRange.end.toIso8601String(),
      },
    ).then((value) => (value['data'] as List).map((e) => ClassificationResult.fromJson(e)).toList());
  }
}
