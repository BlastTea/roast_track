part of '../blocs.dart';

@immutable
abstract class ProfileEvent {}

class SetProfileState extends ProfileEvent {
  SetProfileState([this.state]);

  final ProfileState? state;
}

class SetProfileToInitial extends ProfileEvent {}

class InitializeProfileData extends ProfileEvent {}

class SaveProfilePressed extends ProfileEvent {}
