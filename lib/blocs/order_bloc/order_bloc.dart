part of '../blocs.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    _textControllerOrderName.addListener(() {
      _currentOrder.name = _textControllerOrderName.text.trim();
      add(SetOrderState());
    });

    on<SetOrderState>((event, emit) => emit(event.state ?? _orderDataLoaded));

    on<SetOrderToInitial>((event, emit) {
      _keyList = GlobalKey();

      _textControllerOrderName.clear();

      _orders.clear();

      _originalOrder = Order();
      _currentOrder = Order();

      emit(OrderInitial());
    });

    on<InitializeOrderData>((event, emit) async {
      if (event.completer == null) emit(OrderInitial());

      try {
        _orders = await ApiHelper.get(
          '/api/v1/orders',
          body: {'status': 'in_progress'},
          ignoreAuthorization: false,
          includeCompanyId: true,
        ).then((value) => (value['data'] as List).map((e) => Order.fromJson(e)).toList());
      } catch (e) {
        event.completer?.complete(false);
        emit(OrderError());
        return;
      }

      _keyList = GlobalKey();
      event.completer?.complete(true);
      emit(_orderDataLoaded);
    });

    on<EditOrder>((event, emit) {
      _originalOrder = event.value.copyWith();
      _currentOrder = event.value.copyWith();

      _textControllerOrderName.text = _currentOrder.name ?? '';

      emit(_orderDataLoaded);
    });

    on<SaveOrderPressed>((event, emit) async {
      if (_currentOrder.name?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Nama masih kosong')));
        return;
      }

      showLoadingDialog();

      FocusManager.instance.primaryFocus?.unfocus();

      Order order;
      bool isAdd = _currentOrder.id == null;

      try {
        if (isAdd) {
          order = await ApiHelper.post(
            '/api/v1/orders',
            body: {'name': _textControllerOrderName.text.trim()},
            includeCompanyId: true,
          ).then((value) => Order.fromJson(value['data']));
        } else {
          order = await ApiHelper.put(
            '/api/v1/orders',
            body: {'name': _textControllerOrderName.text.trim()},
            includeCompanyId: true,
          );
        }
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil ditambah')));

      await Future.delayed(Durations.medium3);

      if (isAdd) {
        _orders.add(order);
      } else {
        int index = _orders.indexWhere((element) => element.id == _currentOrder.id);
        _orders[index] = order;
      }
      _originalOrder = Order();
      _currentOrder = Order();
      emit(_orderDataLoaded);

      if (isAdd) DefaultAnimatedListTransition.insertItemList(index: _orders.length - 1, state: _keyList.currentState!);
    });
  }

  GlobalKey<AnimatedListState> _keyList = GlobalKey();

  final TextEditingController _textControllerOrderName = TextEditingController();

  List<Order> _orders = [];

  Order _originalOrder = Order();
  Order _currentOrder = Order();

  OrderDataLoaded get _orderDataLoaded => OrderDataLoaded(
        keyList: _keyList,
        textControllerOrderName: _textControllerOrderName,
        orders: _orders,
        originalOrder: _originalOrder,
        currentOrder: _currentOrder,
      );
}
