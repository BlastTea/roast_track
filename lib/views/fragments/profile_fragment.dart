part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const SizedBox(height: 16.0),
            ListTile(
              leading: ImageContainer.hero(
                tag: 'Profile picture',
                width: 48.0,
                height: 48.0,
                dialogIconSize: 96.0,
                icon: Icons.account_circle,
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                extendedAppBar: AppBar(
                  title: Text(currentUser?.username ?? 'Guest'),
                ),
              ),
              title: Text(currentUser?.username ?? 'Guest'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const EditProfilePage())),
            ),
            const SizedBox(height: 32.0),
            ListTile(
              leading: const Icon(Icons.key),
              title: const Text('Ganti Password'),
              onTap: () => NavigationHelper.to(MaterialPageRoute(builder: (context) => const ChangePasswordPage())),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                bool? result = await NavigationHelper.showDialog(
                  builder: (context) => AlertDialog(
                    title: const Text('Logout dari aplikasi?'),
                    titleTextStyle: MWidgetTheme.of(context)?.dialogTheme.titleTextStyle,
                    actions: [
                      TextButton(
                        onPressed: () => NavigationHelper.back(false),
                        child: const Text('Batal'),
                      ),
                      FilledButton(
                        onPressed: () => NavigationHelper.back(true),
                        child: const Text('Logout'),
                      ),
                    ],
                  ),
                );

                if (!(result ?? false)) return;

                await ApiHelper.signOut();
                NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));
                await Future.delayed(Durations.medium3);
                homePageKey.currentState?.setSelectedIndex(0);
              },
            )
          ],
        ),
      );
}
