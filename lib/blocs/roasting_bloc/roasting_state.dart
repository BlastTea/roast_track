part of '../blocs.dart';

@immutable
abstract class RoastingState {}

class RoastingInitial extends RoastingState {}

class RoastingDataLoaded extends RoastingState {
  RoastingDataLoaded({
    required this.animationController,
    required this.currentRoasting,
    required this.timeElapsed,
  });

  final AnimationController? animationController;

  final Roasting currentRoasting;

  final Duration timeElapsed;
}
