part of '../fragments.dart';

class RoastingRoasteryFragment extends StatelessWidget {
  const RoastingRoasteryFragment({super.key});

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
