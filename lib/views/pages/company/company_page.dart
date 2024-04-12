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
              appBar: AppBar(
                title: Text(widget.isSelect ? 'Pilih Perusahaan' : 'Perusahaan'),
              ),
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
              appBar: AppBar(
                title: Text(widget.isSelect ? 'Pilih Perusahaan' : 'Perusahaan'),
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.companyBloc.add(InitializeCompanyData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(widget.isSelect ? 'Pilih Perusahaan' : 'Perusahaan'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
