part of '../fragments.dart';

class HomeRoasteryFragment extends StatelessWidget {
  const HomeRoasteryFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Center(
          child: Text(
            'Home roastery fragment',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}
