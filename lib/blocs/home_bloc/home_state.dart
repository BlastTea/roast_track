part of '../blocs.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeError extends HomeState {}

class HomeDataLoaded extends HomeState {
  HomeDataLoaded({required this.salesStatistics});

  final List<SalesStatistics> salesStatistics;
}
