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
    this.classificationResults,
  });

  final Roasting roasting;
  final List<Degree> degrees;
  final List<ClassificationRoastingResult>? classificationResults;
}

class SaveRoastingResultPressed extends RoastingResultEvent {}

class TakeRoastingResultPicturePressed extends RoastingResultEvent {}

class SaveRoastingClassificationResultPressed extends RoastingResultEvent {
  SaveRoastingClassificationResultPressed({required this.index});

  final int index;
}
