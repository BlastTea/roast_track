part of '../fragments.dart';

class ClassificationRoasteryFragment extends StatelessWidget {
  const ClassificationRoasteryFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Center(
          child: Text(
            'Classification roastery fragment',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}
