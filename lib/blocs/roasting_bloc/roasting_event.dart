part of '../blocs.dart';

@immutable
abstract class RoastingEvent {}

class SetRoastingState extends RoastingEvent {
  SetRoastingState([this.state]);

  final RoastingState? state;
}

class SetRoastingToInitial extends RoastingEvent {}

class InitializeRoastingData extends RoastingEvent {
  InitializeRoastingData({required this.orderId});

  final int orderId;
}

class ToggleRoastingTimer extends RoastingEvent {}

class RoastingButtonPressed extends RoastingEvent {
  RoastingButtonPressed({required this.type});

  final DegreeType type;
}
