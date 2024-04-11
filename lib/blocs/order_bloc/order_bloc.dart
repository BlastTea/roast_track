part of '../blocs.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    on<SetOrderState>((event, emit) => emit(event.state ?? _orderDataLoaded));

    on<SetOrderToInitial>((event, emit) => emit(OrderInitial()));

    on<InitializeOrderData>((event, emit) async {
      emit(OrderInitial());

      try {} catch (e) {
        emit(OrderError());
        return;
      }

      emit(_orderDataLoaded);
    });
  }

  OrderDataLoaded get _orderDataLoaded => OrderDataLoaded();
}
