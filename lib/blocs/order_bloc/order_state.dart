part of '../blocs.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderError extends OrderState {}

class OrderDataLoaded extends OrderState {
  OrderDataLoaded({
    required this.keyList,
    required this.controllerList,
    required this.textControllerOrderName,
    required this.orders,
    required this.originalOrder,
    required this.currentOrder,
  });

  final GlobalKey<AnimatedListState> keyList;

  final ScrollController controllerList;

  final TextEditingController textControllerOrderName;

  final List<Order> orders;

  final Order? originalOrder;
  final Order? currentOrder;
}
