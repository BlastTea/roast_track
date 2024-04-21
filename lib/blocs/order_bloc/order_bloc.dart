part of '../blocs.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    _textControllerOrderersName.addListener(() => _currentOrder.orderersName = _textControllerOrderersName.text.trim());

    _textControllerAddress.addListener(() => _currentOrder.address = _textControllerAddress.text.trim());

    _textControllerFromDistrict.addListener(() => _currentOrder.fromDistrict = _textControllerFromDistrict.text.trim());

    _textControllerAmount.addListener(() => _currentOrder.amount = _textControllerAmount.number?.toInt());

    _textControllerTotal.addListener(() => _currentOrder.total = _textControllerTotal.number?.toDouble());

    on<SetOrderState>((event, emit) => emit(event.state ?? _orderDataLoaded));

    on<SetOrderToInitial>((event, emit) {
      _keyList = GlobalKey();

      _textControllerOrderersName.clear();
      _textControllerAddress.clear();
      _textControllerFromDistrict.clear();
      _textControllerAmount.clear();
      _textControllerTotal.clear();

      _orders.clear();

      _originalOrder = Order(companyId: currentCompany?.id);
      _currentOrder = Order(companyId: currentCompany?.id);

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

      _textControllerOrderersName.text = _currentOrder.orderersName ?? '';
      _textControllerAddress.text = _currentOrder.address ?? '';
      _textControllerFromDistrict.text = _currentOrder.fromDistrict ?? '';
      _textControllerAmount.text = _currentOrder.amount?.toString() ?? '';
      _textControllerTotal.text = _currentOrder.total?.toInt().toString() ?? '';

      emit(_orderDataLoaded);
    });

    on<SetCurrentOrder>((event, emit) async {
      _currentOrder = event.value.copyWith();
      emit(_orderDataLoaded);
    });

    on<SaveOrderPressed>((event, emit) async {
      if (_currentOrder.orderersName?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Nama customer masih kosong')));
        return;
      } else if (_currentOrder.address?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Alamat masih kosong')));
        return;
      } else if (_currentOrder.beanType == null) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Tipe biji masih kosong')));
        return;
      } else if (_currentOrder.fromDistrict?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Kota asal biji masih kosong')));
        return;
      } else if ((_currentOrder.amount ?? 0) < 1) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Jumlah masih kosong')));
        return;
      } else if ((_currentOrder.total ?? 0) < 1) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Total masih kosong')));
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
            body: _currentOrder.toJson(),
            includeCompanyId: true,
          ).then((value) => Order.fromJson(value['data']));
        } else {
          order = await ApiHelper.put(
            '/api/v1/orders',
            body: _currentOrder.toJson(),
            includeCompanyId: true,
          ).then((value) => Order.fromJson(value['data']));
        }
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      if (isAdd) {
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil ditambah')));
      } else {
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil diubah')));
      }

      await Future.delayed(Durations.medium3);

      if (isAdd) {
        _orders.add(order);
      } else {
        int index = _orders.indexWhere((element) => element.id == _currentOrder.id);
        _orders[index] = order;
      }

      _textControllerOrderersName.clear();
      _originalOrder = Order(companyId: currentCompany?.id);
      _currentOrder = Order(companyId: currentCompany?.id);
      emit(_orderDataLoaded);

      if (isAdd) {
        await _controllerList.animateTo(_controllerList.position.maxScrollExtent, duration: Durations.medium2, curve: Curves.fastOutSlowIn);
        DefaultAnimatedListTransition.insertItemList(index: _orders.length - 1, state: _keyList.currentState!);
      }
    });
  }

  GlobalKey<AnimatedListState> _keyList = GlobalKey();

  final ScrollController _controllerList = ScrollController();

  final TextEditingController _textControllerOrderersName = TextEditingController();
  final TextEditingController _textControllerAddress = TextEditingController();
  final TextEditingController _textControllerFromDistrict = TextEditingController();
  final TextEditingControllerThousandFormat _textControllerAmount = TextEditingControllerThousandFormat();
  final TextEditingControllerThousandFormat _textControllerTotal = TextEditingControllerThousandFormat();

  List<Order> _orders = [];

  Order _originalOrder = Order(id: currentCompany?.id);
  Order _currentOrder = Order(id: currentCompany?.id);

  OrderDataLoaded get _orderDataLoaded => OrderDataLoaded(
        keyList: _keyList,
        controllerList: _controllerList,
        textControllerOrderersName: _textControllerOrderersName,
        textControllerAddress: _textControllerAddress,
        textControllerFromDistrict: _textControllerFromDistrict,
        textControllerAmount: _textControllerAmount,
        textControllerTotal: _textControllerTotal,
        orders: _orders,
        originalOrder: _originalOrder,
        currentOrder: _currentOrder,
      );
}
