part of '../fragments.dart';

class RoasteryAdminFragment extends StatelessWidget {
  const RoasteryAdminFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Center(
          child: Text(
            'Roastery admin fragment',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}
