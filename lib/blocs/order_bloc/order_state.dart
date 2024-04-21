part of '../blocs.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderError extends OrderState {}

class OrderDataLoaded extends OrderState {
  OrderDataLoaded({
    required this.keyList,
    required this.controllerList,
    required this.textControllerOrderersName,
    required this.textControllerAddress,
    required this.textControllerFromDistrict,
    required this.textControllerAmount,
    required this.textControllerTotal,
    required this.orders,
    required this.originalOrder,
    required this.currentOrder,
  });

  final GlobalKey<AnimatedListState> keyList;

  final ScrollController controllerList;

  final TextEditingController textControllerOrderersName;
  final TextEditingController textControllerAddress;
  final TextEditingController textControllerFromDistrict;
  final TextEditingControllerThousandFormat textControllerAmount;
  final TextEditingControllerThousandFormat textControllerTotal;

  final List<Order> orders;

  final Order? originalOrder;
  final Order? currentOrder;
}
