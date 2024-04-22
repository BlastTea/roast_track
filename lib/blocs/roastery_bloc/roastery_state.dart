part of '../blocs.dart';

@immutable
abstract class RoasteryState {}

class RoasteryInitial extends RoasteryState {}

class RoasteryError extends RoasteryState {}

class RoasteryDataLoaded extends RoasteryState {
  RoasteryDataLoaded({
    required this.keyList,
    required this.controllerList,
    required this.focusNodeName,
    required this.textControllerUsername,
    required this.textControllerEmail,
    required this.textControllerPassword,
    required this.textControllerName,
    required this.textControllerAddress,
    required this.textControllerPhoneNumber,
    required this.textControllerDescription,
    required this.isShowPassword,
    required this.roasteries,
    required this.originalRoastery,
    required this.currentRoastery,
  });

  final GlobalKey<AnimatedListState> keyList;

  final ScrollController controllerList;

  final FocusNode focusNodeName;

  final TextEditingController textControllerUsername;
  final TextEditingController textControllerEmail;
  final TextEditingController textControllerPassword;
  final TextEditingController textControllerName;
  final TextEditingController textControllerAddress;
  final TextEditingController textControllerPhoneNumber;
  final TextEditingController textControllerDescription;

  final bool isShowPassword;

  final List<User> roasteries;

  final User originalRoastery;
  final User currentRoastery;
}
