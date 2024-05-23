part of '../blocs.dart';

@immutable
abstract class CompanyState {}

class CompanyInitial extends CompanyState {}

class CompanyError extends CompanyState {}

class CompanyDataLoaded extends CompanyState {
  CompanyDataLoaded({required this.companies});

  final List<Company> companies;
}
