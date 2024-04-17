part of '../blocs.dart';

@immutable
abstract class RoastingResultState {}

class RoastingResultInitial extends RoastingResultState {}

class RoastingResultError extends RoastingResultState {}

class RoastingResultDataLoaded extends RoastingResultState {
  RoastingResultDataLoaded({
    required this.roasting,
    required this.degrees,
  });

  final Roasting roasting;
  final List<Degree> degrees;
}
