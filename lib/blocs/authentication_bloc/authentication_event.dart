part of '../blocs.dart';

@immutable
abstract class AuthenticationEvent {}

class SetAuthenticationState extends AuthenticationEvent {
  SetAuthenticationState([this.state]);

  final AuthenticationState? state;
}

class SetShowPasswordSignIn extends AuthenticationEvent {
  SetShowPasswordSignIn({required this.value});

  final bool value;
}

class SetShowPasswordSignUp extends AuthenticationEvent {
  SetShowPasswordSignUp({required this.value});

  final bool value;
}

class SignInPressed extends AuthenticationEvent {}

class SignUpPressed extends AuthenticationEvent {}
