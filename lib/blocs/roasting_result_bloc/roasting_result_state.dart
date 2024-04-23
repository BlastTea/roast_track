part of '../blocs.dart';

@immutable
abstract class RoastingResultState {}

class RoastingResultInitial extends RoastingResultState {}

class RoastingResultError extends RoastingResultState {}

class RoastingResultDataLoaded extends RoastingResultState {
  RoastingResultDataLoaded({
    required this.draggableScrollableController,
    required this.roasting,
    required this.degrees,
    required this.classificationResults,
  });

  final DraggableScrollableController draggableScrollableController;

  final Roasting roasting;

  final List<Degree> degrees;

  final List<ClassificationRoastingResult> classificationResults;
}
