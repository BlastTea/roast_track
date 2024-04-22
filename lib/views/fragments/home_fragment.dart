part of 'fragments.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    if (currentUser?.role == UserRole.admin && MyApp.homeBloc.state is HomeInitial) MyApp.homeBloc.add(InitializeHomeData());

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        children: [
          const SizedBox(height: 32.0),
          Center(
            child: ImageContainer.hero(
              tag: 'Home roastery fragment',
              width: 150.0,
              height: 150.0,
              borderRadius: BorderRadius.circular(75.0),
              image: const AssetImage('assets/images/logo.png'),
            ),
          ),
          const SizedBox(height: 32.0),
          Text(
            'Tentang “ROAST TRACK”',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          const SizedBox(height: 8.0),
          const Text(
            'Roast Track adalah aplikasi inovatif yang didedikasikan untuk para pecinta kopi dan pebisnis kopi kecil yang ingin meracik biji kopi mereka sendiri dengan sempurna. Aplikasi ini menyediakan berbagai fitur yang menarik dan dapat membantu proses roasting pengguna sekalian',
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 32.0),
          if (currentUser?.role == UserRole.roastery) ...[
            Text(
              'Klasifikasi Proses Roasting',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Divider(),
            const SizedBox(height: 8.0),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '• Light Roast : ',
                    children: [
                      TextSpan(
                        text: 'Coklat muda, keasaman tinggi, kompleks, buah-buahan.\n',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: '• Medium Roast : ',
                    children: [
                      TextSpan(
                        text: 'Lebih tua, berminyak sedikit, seimbang, buah-buahan, karamel.\n',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: '• Medium-Dark Roast : ',
                    children: [
                      TextSpan(
                        text: 'Coklat tua, berminyak, pahit, karamel.\n',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: '• Dark Roast : ',
                    children: [
                      TextSpan(
                        text: 'Coklat gelap, berminyak, pahit, kuat, terbakar.\n',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              textAlign: TextAlign.justify,
            ),
          ] else ...[
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, stateHome) {
                if (stateHome is HomeDataLoaded) {
                  return SfCartesianChart(
                    primaryXAxis: const CategoryAxis(
                      labelPlacement: LabelPlacement.onTicks,
                    ),
                    trackballBehavior: TrackballBehavior(
                      activationMode: ActivationMode.singleTap,
                      enable: true,
                      tooltipSettings: const InteractiveTooltip(format: 'point.y\npoint.x'),
                      markerSettings: const TrackballMarkerSettings(
                        markerVisibility: TrackballVisibilityMode.visible,
                      ),
                    ),
                    title: ChartTitle(
                      text: 'Statistik Penjualan',
                      alignment: ChartAlignment.far,
                      textStyle: Theme.of(context).textTheme.titleLarge,
                    ),
                    series: [
                      LineSeries<SalesStatistics, String>(
                        dataSource: stateHome.salesStatistics,
                        xValueMapper: (datum, index) => datum.date?.getWeekday(),
                        yValueMapper: (datum, index) => datum.total,
                      )
                    ],
                  );
                } else if (stateHome is HomeError) {
                  return ErrorOccuredButton(
                    onRetryPressed: () => MyApp.homeBloc.add(InitializeHomeData()),
                  );
                }

                return SfCartesianChart(
                  title: ChartTitle(
                    text: 'Statistik Penjualan',
                    alignment: ChartAlignment.far,
                    textStyle: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}
