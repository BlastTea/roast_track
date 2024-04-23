part of 'fragments.dart';

class RoasteryFragment extends StatelessWidget {
  const RoasteryFragment({super.key});

  static Widget listItem({
    required BuildContext context,
    required User roastery,
    Animation<double>? animation,
  }) =>
      DefaultAnimatedListTransition(
        animation: animation,
        builder: (context, animation) => Column(
          children: [
            ListTile(
                leading: const Icon(Icons.person),
                title: Text(roastery.username ?? '?'),
                trailing: IconButton.outlined(
                  onPressed: () => MyApp.roasteryBloc.add(DeleteRoasteryPressed(value: roastery)),
                  icon: const Icon(Icons.delete),
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.red.withOpacity(0.75),
                    side: BorderSide(color: Colors.red.withOpacity(0.75)),
                  ),
                ),
                onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => AddEditRoasteryPage.edit(roastery: roastery)))),
            const Divider(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    if (MyApp.roasteryBloc.state is RoasteryInitial) MyApp.roasteryBloc.add(InitializeRoasteryData());

    return BlocBuilder<RoasteryBloc, RoasteryState>(
      builder: (context, stateRoastery) {
        if (stateRoastery is RoasteryDataLoaded) {
          return Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () => NavigationHelper.to(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) => const AddEditRoasteryPage.add(),
                ),
              ),
              label: const Text('Roastery'),
              icon: const Icon(Icons.add),
            ),
            body: stateRoastery.roasteries.isEmpty
                ? RetryButton(
                    titleText: 'Tidak ada data',
                    onRetryPressed: () => MyApp.roasteryBloc.add(InitializeRoasteryData()),
                  )
                : SafeArea(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        Completer<bool> completer = Completer();
                        MyApp.roasteryBloc.add(InitializeRoasteryData(completer: completer));
                        await completer.future;
                      },
                      child: AnimatedList(
                        physics: const AlwaysScrollableScrollPhysics(),
                        key: stateRoastery.keyList,
                        controller: stateRoastery.controllerList,
                        padding: const EdgeInsets.only(top: 16.0, bottom: kBottomFabPadding),
                        itemBuilder: (context, index, animation) => listItem(context: context, roastery: stateRoastery.roasteries[index], animation: animation),
                        initialItemCount: stateRoastery.roasteries.length,
                      ),
                    ),
                  ),
          );
        } else if (stateRoastery is RoasteryError) {
          return Scaffold(
            body: ErrorOccuredButton(
              onRetryPressed: () => MyApp.roasteryBloc.add(InitializeRoasteryData()),
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
