part of '../blocs.dart';

@immutable
abstract class RoasteryEvent {}

class SetRoasteryState extends RoasteryEvent {
  SetRoasteryState([this.state]);

  final RoasteryState? state;
}

class SetRoasteryToInitial extends RoasteryEvent {}

class InitializeRoasteryData extends RoasteryEvent {
  InitializeRoasteryData({this.completer});

  final Completer<bool>? completer;
}

class EditRoastery extends RoasteryEvent {
  EditRoastery({required this.value});

  final User value;
}

class SetCurrentRoastery extends RoasteryEvent {
  SetCurrentRoastery({required this.value});

  final User value;
}

class GeneratePasswordRoasteryPressed extends RoasteryEvent {}

class ShowPasswordRoasteryPressed extends RoasteryEvent {
  ShowPasswordRoasteryPressed({required this.value});

  final bool value;
}

class SaveRoasteryPressed extends RoasteryEvent {}

class DeleteRoasteryPressed extends RoasteryEvent {
  DeleteRoasteryPressed({required this.value});

  final User value;
}
