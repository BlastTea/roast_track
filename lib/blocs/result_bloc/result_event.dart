part of '../blocs.dart';

@immutable
abstract class ResultEvent {}

class SetResultState extends ResultEvent {
  SetResultState([this.state]);

  final ResultState? state;
}

class SetResultToInitial extends ResultEvent {}

class InitializeResultData extends ResultEvent {
  InitializeResultData({
    this.tabController,
    this.completer,
  });

  final TabController? tabController;
  final Completer<bool>? completer;
}

class SetResultDateTime extends ResultEvent {
  SetResultDateTime({required this.value});

  final DateTimeRange value;
}
