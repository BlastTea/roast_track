part of '../blocs.dart';

@immutable
abstract class CompanyEvent {}

class SetCompanyState extends CompanyEvent {
  SetCompanyState([this.state]);

  final CompanyState? state;
}

class SetCompanyToInitial extends CompanyEvent {}

class InitializeCompanyData extends CompanyEvent {
  InitializeCompanyData({this.completer});

  final Completer<bool>? completer;
}

class CheckCurrentCompany extends CompanyEvent {}

class SetSelectedCompany extends CompanyEvent {
  SetSelectedCompany({required this.company});

  final Company company;
}
