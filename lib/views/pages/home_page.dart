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
          const HomeFragment(),
          currentUser?.role == UserRole.admin ? const OrderFragment() : const ClassificationFragment(),
          currentUser?.role == UserRole.admin ? const RoasteryFragment() : const OrderFragment(),
          if (currentUser?.role == UserRole.roastery) const ResultFragment(),
          const ProfileFragment(),
        ][_selectedIndex],
        bottomNavigationBar: NavigationBar(
          destinations: List.generate(
            currentUser?.role == UserRole.admin ? 4 : 5,
            (index) => NavigationDestination(
              icon: [
                const Icon(Icons.home_outlined),
                currentUser?.role == UserRole.admin ? const Icon(Icons.receipt_long_outlined) : const Icon(Icons.camera_alt_outlined),
                currentUser?.role == UserRole.admin ? const Icon(Icons.groups_outlined) : const Icon(Icons.calendar_today_outlined),
                if (currentUser?.role == UserRole.roastery) const Icon(Icons.summarize_outlined),
                const Icon(Icons.account_circle_outlined),
              ][index],
              selectedIcon: [
                const Icon(Icons.home),
                currentUser?.role == UserRole.admin ? const Icon(Icons.receipt_long) : const Icon(Icons.camera_alt),
                currentUser?.role == UserRole.admin ? const Icon(Icons.groups) : const Icon(Icons.calendar_today),
                if (currentUser?.role == UserRole.roastery) const Icon(Icons.summarize),
                const Icon(Icons.account_circle),
              ][index],
              label: [
                'Beranda',
                currentUser?.role == UserRole.admin ? 'Order' : 'Klasifikasi',
                currentUser?.role == UserRole.admin ? 'Roastery' : 'Roasting',
                if (currentUser?.role == UserRole.roastery) 'Hasil',
                'Profil',
              ][index],
            ),
          ),
          selectedIndex: _selectedIndex,
          onDestinationSelected: setSelectedIndex,
        ),
      );
}
