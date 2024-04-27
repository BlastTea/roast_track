part of 'fragments.dart';

class ResultFragment extends StatefulWidget {
  const ResultFragment({super.key});

  @override
  State<ResultFragment> createState() => _ResultFragmentState();
}

class _ResultFragmentState extends State<ResultFragment> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    if (MyApp.resultBloc.state is ResultInitial) MyApp.resultBloc.add(InitializeResultData(tabController: TabController(length: 2, vsync: this)));
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<ResultBloc, ResultState>(
        builder: (context, stateResult) {
          if (stateResult is ResultDataLoaded) {
            return Scaffold(
              floatingActionButton: stateResult.tabController.index == 0
                  ? FloatingActionButton(
                      onPressed: () => ExcelHelper.exportOrder(
                        orders: stateResult.orders,
                        dateTimeRange: stateResult.dateTimeRange,
                      ).then((value) async {
                        if (value != null) {
                          NavigationHelper.clearSnackBars();
                          NavigationHelper.showSnackBar(
                            SnackBar(
                              content: const Text('Data berhasil di export'),
                              action: SnackBarAction(
                                label: 'Buka',
                                onPressed: () => OpenFile.open(value).then((value) {
                                  switch (value.type) {
                                    case ResultType.error:
                                      showErrorDialog(value.message);
                                    case ResultType.fileNotFound:
                                      NavigationHelper.clearSnackBars();
                                      NavigationHelper.showSnackBar(const SnackBar(content: Text('File tidak ditemukan')));
                                    case ResultType.noAppToOpen:
                                      NavigationHelper.clearSnackBars();
                                      NavigationHelper.showSnackBar(const SnackBar(content: Text('Tidak ada aplikasi yang ditemukan untuk membuka file tersebut')));
                                    case ResultType.permissionDenied:
                                      NavigationHelper.clearSnackBars();
                                      NavigationHelper.showSnackBar(const SnackBar(content: Text('Izin tidak diberikan')));
                                    default:
                                  }
                                }),
                              ),
                            ),
                          );
                        }
                      }),
                      child: const Icon(Icons.file_download),
                    )
                  : null,
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(child: SizedBox(height: MediaQuery.viewPaddingOf(context).top)),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SliverHeader(
                      builder: (context, shrinkOffset, overlapsContent) => Container(
                        color: Theme.of(context).colorScheme.surface,
                        child: Material(
                          color: Colors.transparent,
                          child: TabBar(
                            controller: stateResult.tabController,
                            tabs: ['Roasting', 'Klasifikasi'].map((e) => Tab(text: e)).toList(),
                          ),
                        ),
                      ),
                      maxExtent: 48.0,
                      minExtent: 48.0,
                      rebuild: (oldDelegate, newDelegate) => false,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  SliverPersistentHeader(
                    floating: true,
                    delegate: SliverHeader(
                      builder: (context, shrinkOffset, overlapsContent) => Container(
                        color: Theme.of(context).colorScheme.surface,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: DateRangeField(
                          value: stateResult.dateTimeRange,
                          firstDate: DateTime(1),
                          lastDate: DateTime.now(),
                          decoration: const InputDecoration(
                            labelText: 'Tanggal',
                          ),
                          readOnly: true,
                          onDateChanged: (value) => value == null ? null : MyApp.resultBloc.add(SetResultDateTime(value: value)),
                        ),
                      ),
                      maxExtent: 56.0,
                      minExtent: 56.0,
                      rebuild: (oldDelegate, newDelegate) => false,
                    ),
                  ),
                ],
                body: stateResult.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : TabBarView(
                        controller: stateResult.tabController,
                        children: [
                          stateResult.orders.isEmpty
                              ? RetryButton(
                                  titleText: 'Tidak ada data',
                                  onRetryPressed: () => MyApp.resultBloc.add(InitializeResultData()),
                                )
                              : RefreshIndicator(
                                  onRefresh: () async {
                                    Completer<bool> completer = Completer();
                                    MyApp.resultBloc.add(InitializeResultData(completer: completer));
                                    await completer.future;
                                  },
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      Order order = stateResult.orders[index];

                                      return Column(
                                        children: [
                                          ListTile(
                                            title: Text(order.orderersName ?? '?'),
                                            titleTextStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                                            subtitle: Text('Tipe biji : ${order.beanType?.text ?? '?'}\nKota asal : ${order.fromDistrict ?? '?'}\nAlamat : ${order.address}\nJumlah : ${order.amount?.toThousandFormat() ?? '0'}\nTotal : Rp ${order.total?.toThousandFormat() ?? '0'}\n${order.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: true) ?? '?'}'),
                                            subtitleTextStyle: Theme.of(context).textTheme.bodyLarge,
                                            isThreeLine: true,
                                            onTap: () => NavigationHelper.to(
                                              MaterialPageRoute(
                                                builder: (context) => RoastingResultPage.readOnly(
                                                  roasting: order.roastings!.first,
                                                  degrees: order.roastings!.first.degrees!,
                                                  classificationResults: order.roastings!.first.classificationRoastingResults!,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Divider(),
                                        ],
                                      );
                                    },
                                    itemCount: stateResult.orders.length,
                                  ),
                                ),
                          stateResult.classificationResults.isEmpty
                              ? RetryButton(
                                  titleText: 'Tidak ada data',
                                  onRetryPressed: () => MyApp.resultBloc.add(InitializeResultData()),
                                )
                              : RefreshIndicator(
                                  onRefresh: () async {
                                    Completer<bool> completer = Completer();
                                    MyApp.resultBloc.add(InitializeResultData(completer: completer));
                                    await completer.future;
                                  },
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      ClassificationResult result = stateResult.classificationResults[index];

                                      return Column(
                                        children: [
                                          ListTile(
                                            title: Text(result.resultLabel?.text ?? '?'),
                                            subtitle: Text(result.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: true) ?? '?'),
                                          ),
                                          const Divider(),
                                        ],
                                      );
                                    },
                                    itemCount: stateResult.classificationResults.length,
                                  ),
                                ),
                        ],
                      ),
              ),
            );
          } else if (stateResult is ResultError) {
            return SafeArea(
              child: ErrorOccuredButton(
                onRetryPressed: () => MyApp.resultBloc.add(InitializeResultData()),
              ),
            );
          }

          return const SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
