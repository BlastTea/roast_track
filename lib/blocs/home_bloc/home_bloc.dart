part of '../blocs.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<SetHomeState>((event, emit) => emit(event.state ?? _homeDataLoaded));

    on<SetHomeToInitial>((event, emit) {
      _salesStatistics.clear();

      emit(HomeInitial());
    });

    on<InitializeHomeData>((event, emit) async {
      if (_isInitializing) return;

      _isInitializing = true;

      emit(HomeInitial());

      try {
        dynamic response = await ApiHelper.get('/api/v1/sales-statistics');

        _salesStatistics = (response['data']['sales_statistics'] as Map).entries.map((e) => SalesStatistics(date: DateTime.tryParse(e.key), total: e.value)).toList();
      } catch (e) {
        _isInitializing = false;
        ApiHelper.handleError(e);
        emit(HomeError());
        return;
      }

      _isInitializing = false;
      emit(_homeDataLoaded);
    });
  }

  bool _isInitializing = false;

  List<SalesStatistics> _salesStatistics = [];

  HomeDataLoaded get _homeDataLoaded => HomeDataLoaded(
        salesStatistics: _salesStatistics,
      );
}
