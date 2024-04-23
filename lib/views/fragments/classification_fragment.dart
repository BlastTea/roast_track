part of 'fragments.dart';

class ClassificationFragment extends StatelessWidget {
  const ClassificationFragment({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: ImageContainer.hero(
              tag: 'Classification image',
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(kShapeExtraLarge)),
              image: const NetworkImage('https://images.unsplash.com/photo-1589830802010-c2c25d784842?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              extendedAppBar: AppBar(
                title: const Text('Gambar Klasifikasi'),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          FloatingActionButton.large(
            child: const Icon(Icons.camera_alt),
            onPressed: () => ImageContainer.handleChangeImage(
              sheetTitleText: 'Ambil gambar',
              showDelete: false,
            ),
          ),
          const SizedBox(height: 32.0),
        ],
      );
}
