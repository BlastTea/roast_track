part of '../blocs.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderError extends OrderState {}

class OrderDataLoaded extends OrderState {}
