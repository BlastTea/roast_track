part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void setSelectedIndex(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: [
          const OrderFragment(),
          const ReportFragment(),
          const CompanyFragment(),
          const ProfileFragment(),
        ][_selectedIndex],
        bottomNavigationBar: NavigationBar(
          destinations: List.generate(
            4,
            (index) => NavigationDestination(
              icon: [
                const Icon(Icons.receipt_long_outlined),
                const Icon(Icons.assessment_outlined),
                const Icon(Icons.store_outlined),
                const Icon(Icons.account_circle_outlined),
              ][index],
              selectedIcon: [
                const Icon(Icons.receipt_long),
                const Icon(Icons.assessment),
                const Icon(Icons.store),
                const Icon(Icons.account_circle),
              ][index],
              label: [
                'Pesanan',
                'Laporan',
                'Perusahaan',
                'Profil',
              ][index],
            ),
          ),
          selectedIndex: _selectedIndex,
          onDestinationSelected: setSelectedIndex,
        ),
      );
}
