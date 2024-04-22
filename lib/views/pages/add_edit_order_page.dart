part of 'pages.dart';

class AddEditOrderPage extends StatefulWidget {
  const AddEditOrderPage.add({super.key})
      : order = null,
        isAdd = true;

  const AddEditOrderPage.edit({
    super.key,
    required this.order,
  }) : isAdd = false;

  final Order? order;
  final bool isAdd;

  @override
  State<AddEditOrderPage> createState() => _AddEditOrderPageState();
}

class _AddEditOrderPageState extends State<AddEditOrderPage> {
  @override
  void initState() {
    super.initState();
    MyApp.orderBloc.add(EditOrder(value: widget.order ?? Order()));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<OrderBloc, OrderState>(
        builder: (context, stateOrder) {
          if (stateOrder is OrderDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah Order' : 'Edit Order'),
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => MyApp.orderBloc.add(SaveOrderPressed()),
                label: const Text('Simpan'),
                icon: const Icon(Icons.save),
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  const SizedBox(height: 16.0),
                  TextField(
                    autofocus: true,
                    controller: stateOrder.textControllerOrderersName,
                    decoration: const InputDecoration(
                      labelText: 'Nama customer',
                    ),
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: kMaximumDescriptionHeight,
                    ),
                    child: TextField(
                      controller: stateOrder.textControllerAddress,
                      decoration: const InputDecoration(
                        labelText: 'Alamat',
                      ),
                      maxLength: 255,
                      maxLines: null,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  DropdownMenu(
                    controller: TextEditingController(text: stateOrder.currentOrder?.beanType?.text),
                    width: MediaQuery.sizeOf(context).width - 32.0,
                    label: const Text('Tipe biji'),
                    dropdownMenuEntries: BeanType.values.map((e) => DropdownMenuEntry(value: e, label: e.text)).toList(),
                    onSelected: (value) => MyApp.orderBloc.add(SetCurrentOrder(value: stateOrder.currentOrder!.copyWith(beanType: value))),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: stateOrder.textControllerFromDistrict,
                    decoration: const InputDecoration(
                      labelText: 'Kota asal biji',
                    ),
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: stateOrder.textControllerAmount,
                    decoration: const InputDecoration(
                      labelText: 'Jumlah',
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: stateOrder.textControllerTotal,
                    decoration: const InputDecoration(
                      labelText: 'Total',
                      prefixText: 'Rp ',
                    ),
                    keyboardType: TextInputType.number,
                    onEditingComplete: () => MyApp.orderBloc.add(SaveOrderPressed()),
                  ),
                  const SizedBox(height: kBottomFabPadding),
                ],
              ),
            );
          } else if (stateOrder is OrderError) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah Order' : 'Edit Order'),
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.orderBloc.add(InitializeOrderData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(widget.isAdd ? 'Tambah Order' : 'Edit Order'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
