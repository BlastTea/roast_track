part of '../blocs.dart';

@immutable
abstract class RoastingState {}

class RoastingInitial extends RoastingState {}

class RoastingDataLoaded extends RoastingState {
  RoastingDataLoaded({
    required this.animationController,
    required this.currentRoasting,
    required this.lastDegree,
    required this.stopwatch,
    required this.degrees,
    required this.timeElapsed,
  });

  final AnimationController? animationController;

  final Roasting currentRoasting;

  final List<Degree> degrees;

  final DegreeType? lastDegree;

  final Stopwatch stopwatch;

  final Duration timeElapsed;
}
