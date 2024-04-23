part of '../blocs.dart';

@immutable
abstract class ResultState {}

class ResultInitial extends ResultState {}

class ResultError extends ResultState {}

class ResultDataLoaded extends ResultState {
  ResultDataLoaded({
    required this.tabController,
    required this.dateTimeRange,
    required this.isLoading,
    required this.orders,
    required this.classificationResults,
  });

  final TabController tabController;

  final DateTimeRange dateTimeRange;

  final bool isLoading;

  final List<Order> orders;

  final List<ClassificationResult> classificationResults;
}
