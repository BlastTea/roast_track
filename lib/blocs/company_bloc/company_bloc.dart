part of '../blocs.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  CompanyBloc() : super(CompanyInitial()) {
    on<SetCompanyState>((event, emit) => emit(event.state ?? _companyDataLoaded));

    on<SetCompanyToInitial>((event, emit) {
      _companies.clear();

      emit(CompanyInitial());
    });

    on<InitializeCompanyData>((event, emit) async {
      if (event.completer == null) emit(CompanyInitial());

      // try {
      //   _companies = await ApiHelper.get('/api/v1/companies', ignoreAuthorization: false).then((value) => (value['data'] as List).map((e) => Company.fromJson(e)).toList());
      // } catch (e) {
      //   event.completer?.complete(false);
      //   ApiHelper.handleError(e);
      //   return;
      // }

      _companies = [currentUser!.company!];

      event.completer?.complete(true);
      emit(_companyDataLoaded);
    });

    on<CheckCurrentCompany>((event, emit) async {
      int? selectedCompanyId = await SharedPreferences.getInstance().then((value) => value.getInt(keySelectedCompanyId));
      if (selectedCompanyId == null) return;

      int selectedIndex = _companies.indexWhere((element) => element.id == selectedCompanyId);
      if (selectedIndex == -1) return;

      // currentCompany = _companies[selectedIndex];
      // currentUser?.role = currentCompany?.members?.first.role;

      NavigationHelper.to(MaterialPageRoute(builder: (context) => HomePage(key: homePageKey)));
    });

    on<SetSelectedCompany>((event, emit) async {
      // currentCompany = event.company;
      // currentUser?.role = currentCompany?.members?.first.role;

      // await SharedPreferences.getInstance().then((value) => value.setInt(keySelectedCompanyId, currentUser!.company!.id!));

      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => HomePage(key: homePageKey)));
    });
  }

  List<Company> _companies = [];

  CompanyDataLoaded get _companyDataLoaded => CompanyDataLoaded(
        companies: _companies,
      );
}
