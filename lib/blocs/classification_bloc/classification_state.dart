part of '../blocs.dart';

@immutable
abstract class ClassificationState {}

class ClassificationInitial extends ClassificationState {}

class ClassificationError extends ClassificationState {}

class ClassificationDataLoaded extends ClassificationState {
  ClassificationDataLoaded({
    required this.draggableScrollableController,
    required this.classificationResults,
    required this.currentImageData,
  });

  final DraggableScrollableController draggableScrollableController;

  final List<ClassificationResult> classificationResults;

  final Uint8List? currentImageData;
}
