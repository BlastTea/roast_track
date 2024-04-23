part of '../blocs.dart';

@immutable
abstract class ClassificationEvent {}

class SetClassificationState extends ClassificationEvent {
  SetClassificationState([this.state]);

  final ClassificationState? state;
}

class SetClassificationToInitial extends ClassificationEvent {}

class InitializeClassificationData extends ClassificationEvent {}

class TakeClassificationPicturePressed extends ClassificationEvent {}

class SaveClassificationPressed extends ClassificationEvent {
  SaveClassificationPressed({required this.index});

  final int index;
}
