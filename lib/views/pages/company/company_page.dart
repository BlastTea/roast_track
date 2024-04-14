part of '../pages.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key}) : isSelect = false;

  const CompanyPage.select({super.key}) : isSelect = true;

  final bool isSelect;

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  void initState() {
    super.initState();
    MyApp.companyBloc.add(CheckCurrentCompany());
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<CompanyBloc, CompanyState>(
        builder: (context, stateCompany) {
          if (stateCompany is CompanyDataLoaded) {
            return Scaffold(
              appBar: _buildAppBar(context: context),
              body: stateCompany.companies.isEmpty
                  ? RetryButton(
                      titleText: 'Tidak ada data',
                      onRetryPressed: () => MyApp.companyBloc.add(InitializeCompanyData()),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        Completer<bool> completer = Completer();
                        MyApp.companyBloc.add(InitializeCompanyData(completer: completer));
                        await completer.future;
                      },
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          Company company = stateCompany.companies[index];

                          return ListTile(
                            title: Text(company.name ?? '?'),
                            subtitle: Text(company.address ?? '?'),
                            onTap: () => widget.isSelect ? MyApp.companyBloc.add(SetSelectedCompany(company: company)) : showInformationDialog('Fitur ini masih belum tersedia'),
                          );
                        },
                        itemCount: stateCompany.companies.length,
                      ),
                    ),
            );
          } else if (stateCompany is CompanyInitial) {
            return Scaffold(
              appBar: _buildAppBar(context: context),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.companyBloc.add(InitializeCompanyData()),
              ),
            );
          }

          return Scaffold(
            appBar: _buildAppBar(context: context),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );

  PreferredSizeWidget _buildAppBar({required BuildContext context}) => AppBar(
        title: Text(widget.isSelect ? 'Pilih Perusahaan' : 'Perusahaan'),
        actions: [
          if (widget.isSelect)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                await ApiHelper.signOut();
                NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));
                await Future.delayed(Durations.medium3);
                homePageKey.currentState?.setSelectedIndex(0);
              },
            ),
          const SizedBox(width: 8.0),
        ],
      );
}
