part of 'fragments.dart';

class OrderFragment extends StatelessWidget {
  const OrderFragment({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showInformationDialog('Fitur ini masih belum tersedia'),
          label: const Text('Pesanan'),
          icon: const Icon(Icons.add),
        ),
      );
}
