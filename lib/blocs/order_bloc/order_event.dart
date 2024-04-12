part of '../blocs.dart';

@immutable
abstract class OrderEvent {}

class SetOrderState extends OrderEvent {
  SetOrderState([this.state]);

  final OrderState? state;
}

class SetOrderToInitial extends OrderEvent {}

class InitializeOrderData extends OrderEvent {
  InitializeOrderData({this.completer});

  final Completer<bool>? completer;
}

class EditOrder extends OrderEvent {
  EditOrder({required this.value});

  final Order value;
}

class SaveOrderPressed extends OrderEvent {}
