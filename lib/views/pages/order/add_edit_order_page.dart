part of '../pages.dart';

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
    if (!widget.isAdd) MyApp.orderBloc.add(EditOrder(value: widget.order!));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<OrderBloc, OrderState>(
        builder: (context, stateOrder) {
          if (stateOrder is OrderDataLoaded) {
            if (kDebugMode && widget.isAdd) stateOrder.textControllerOrderName.text = 'Test';

            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah Pesanan' : 'Edit Pesanan'),
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
                    controller: stateOrder.textControllerOrderName,
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                    ),
                  ),
                ],
              ),
            );
          } else if (stateOrder is OrderError) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.isAdd ? 'Tambah Pesanan' : 'Edit Pesanan'),
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.orderBloc.add(InitializeOrderData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(widget.isAdd ? 'Tambah Pesanan' : 'Edit Pesanan'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
