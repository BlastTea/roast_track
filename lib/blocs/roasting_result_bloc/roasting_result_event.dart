part of '../blocs.dart';

@immutable
abstract class RoastingResultEvent {}

class SetRoastingResultState extends RoastingResultEvent {
  SetRoastingResultState([this.state]);

  final RoastingResultState? state;
}

class SetRoastingResultToInitial extends RoastingResultEvent {}

class InitializeRoastingResultData extends RoastingResultEvent {
  InitializeRoastingResultData({
    required this.roasting,
    required this.degrees,
  });

  final Roasting roasting;
  final List<Degree> degrees;
}

class TakePicturePressed extends RoastingResultEvent {}
