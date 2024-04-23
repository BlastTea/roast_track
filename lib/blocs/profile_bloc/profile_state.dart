part of '../blocs.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileError extends ProfileState {}

class ProfileDataLoaded extends ProfileState {
  ProfileDataLoaded({
    required this.textControllerEmail,
    required this.textControllerName,
    required this.textControllerAddress,
    required this.textControllerPhoneNumber,
    required this.textControllerDescription,
    required this.currentUser,
  });

  final TextEditingController textControllerEmail;
  final TextEditingController textControllerName;
  final TextEditingController textControllerAddress;
  final TextEditingController textControllerPhoneNumber;
  final TextEditingController textControllerDescription;
  final User? currentUser;
}
