part of 'fragments.dart';

class OrderFragment extends StatelessWidget {
  const OrderFragment({super.key});

  static Widget listItem({
    required BuildContext context,
    required Order order,
    Animation<double>? animation,
  }) =>
      DefaultAnimatedListTransition(
        animation: animation,
        builder: (context, animation) => Column(
          children: [
            ListTile(
              title: Text(order.orderersName ?? '?'),
              subtitle: Text('Tipe biji : ${order.beanType?.text ?? '?'}\nJumlah : ${order.amount?.toThousandFormat() ?? '0'}\nTotal : Rp ${order.total?.toThousandFormat() ?? '0'}\n${order.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: true) ?? '?'}'),
              isThreeLine: true,
              trailing: currentUser?.role == UserRole.roastery
                  ? IconButton.outlined(
                      onPressed: () => NavigationHelper.to(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const RoastingPage(),
                        ),
                      ),
                      icon: const Icon(Icons.play_arrow_rounded),
                    )
                  : null,
              onTap: currentUser?.role == UserRole.admin
                  ? () => NavigationHelper.to(MaterialPageRoute(builder: (context) => AddEditOrderPage.edit(order: order)))
                  : () => NavigationHelper.to(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const RoastingPage(),
                        ),
                      ),
            ),
            const Divider(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.orderBloc.state is OrderInitial) MyApp.orderBloc.add(InitializeOrderData());

    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, stateOrder) {
        if (stateOrder is OrderDataLoaded) {
          return Scaffold(
            floatingActionButton: currentUser?.role == UserRole.admin
                ? FloatingActionButton.extended(
                    onPressed: () => NavigationHelper.to(
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => const AddEditOrderPage.add(),
                      ),
                    ),
                    label: const Text('Order'),
                    icon: const Icon(Icons.add),
                  )
                : null,
            body: stateOrder.orders.isEmpty
                ? RetryButton(
                    titleText: 'Tidak ada data',
                    onRetryPressed: () => MyApp.orderBloc.add(InitializeOrderData()),
                  )
                : SafeArea(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        Completer<bool> completer = Completer();
                        MyApp.orderBloc.add(InitializeOrderData(completer: completer));
                        await completer.future;
                      },
                      child: AnimatedList(
                        physics: const AlwaysScrollableScrollPhysics(),
                        key: stateOrder.keyList,
                        controller: stateOrder.controllerList,
                        padding: const EdgeInsets.only(top: 16.0, bottom: kBottomFabPadding),
                        itemBuilder: (context, index, animation) => listItem(context: context, order: stateOrder.orders[index], animation: animation),
                        initialItemCount: stateOrder.orders.length,
                      ),
                    ),
                  ),
          );
        } else if (stateOrder is OrderError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.orderBloc.add(InitializeOrderData()),
            ),
          );
        }

        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
