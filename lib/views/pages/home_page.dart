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
          currentUser?.role == UserRole.admin ? const HomeAdminFragment() : const HomeRoasteryFragment(),
          currentUser?.role == UserRole.admin ? const OrderFragment() : const ClassificationRoasteryFragment(),
          currentUser?.role == UserRole.admin ? const RoasteryAdminFragment() : const RoastingRoasteryFragment(),
          const ProfileFragment(),
        ][_selectedIndex],
        bottomNavigationBar: NavigationBar(
          destinations: List.generate(
            4,
            (index) => NavigationDestination(
              icon: [
                const Icon(Icons.home_outlined),
                const Icon(Icons.receipt_long_outlined),
                const Icon(Icons.groups),
                const Icon(Icons.account_circle_outlined),
              ][index],
              selectedIcon: [
                const Icon(Icons.home),
                const Icon(Icons.receipt_long),
                currentUser?.role == UserRole.admin ? const Icon(Icons.groups) : const Icon(Icons.calendar_today),
                const Icon(Icons.account_circle),
              ][index],
              label: [
                'Beranda',
                currentUser?.role == UserRole.admin ? 'Pesanan' : 'Klasifikasi',
                currentUser?.role == UserRole.admin ? 'Roastery' : 'Roasting',
                'Profil',
              ][index],
            ),
          ),
          selectedIndex: _selectedIndex,
          onDestinationSelected: setSelectedIndex,
        ),
      );
}
