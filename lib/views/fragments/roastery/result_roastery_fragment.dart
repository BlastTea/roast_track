part of '../fragments.dart';

class ResultRoasteryFragment extends StatelessWidget {
  const ResultRoasteryFragment({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.file_download),
          ),
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 48.0,
                  child: TabBar(
                    tabs: List.generate(
                      2,
                      (index) => Tab(
                        text: ['Roasting', 'Klasifikasi'][index],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Tambah filter berdasarkan tanggal, Tampilkan list order dulu, terus menampilkan hasil roasting berupa grafik saja',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Tambah filter berdasarkan tanggal, Tampilkan tabel',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
