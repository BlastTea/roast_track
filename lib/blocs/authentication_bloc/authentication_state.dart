part of '../blocs.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.textControllerUsernameSignIn,
    required this.textControllerPasswordSignIn,
    required this.textControllerUsernameSignUp,
    required this.textControllerPasswordSignUp,
    required this.showPasswordSignIn,
    required this.showPasswordSignUp,
    required this.isSiningIn,
    required this.isSiningUp,
  });

  final TextEditingController textControllerUsernameSignIn;
  final TextEditingController textControllerPasswordSignIn;
  final TextEditingController textControllerUsernameSignUp;
  final TextEditingController textControllerPasswordSignUp;

  final bool showPasswordSignIn;
  final bool showPasswordSignUp;
  final bool isSiningIn;
  final bool isSiningUp;
}
