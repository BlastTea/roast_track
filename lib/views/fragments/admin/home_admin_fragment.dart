part of '../fragments.dart';

class HomeAdminFragment extends StatelessWidget {
  const HomeAdminFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Center(
          child: Text(
            'Home admin fragment',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}
