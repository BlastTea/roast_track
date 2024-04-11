part of '../blocs.dart';

@immutable
abstract class OrderEvent {}

class SetOrderState extends OrderEvent {
  SetOrderState([this.state]);

  final OrderState? state;
}

class SetOrderToInitial extends OrderEvent {}

class InitializeOrderData extends OrderEvent {}
