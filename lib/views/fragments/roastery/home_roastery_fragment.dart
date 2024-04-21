part of '../fragments.dart';

class HomeRoasteryFragment extends StatelessWidget {
  const HomeRoasteryFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
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
          ],
        ),
      );
}
