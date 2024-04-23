part of 'pages.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  void initState() {
    super.initState();
    MyApp.profileBloc.add(InitializeProfileData());
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, stateProfile) {
          if (stateProfile is ProfileDataLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Edit Profil'),
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => MyApp.profileBloc.add(SaveProfilePressed()),
                label: const Text('Simpan'),
                icon: const Icon(Icons.save),
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: TextEditingController(text: stateProfile.currentUser?.username ?? ''),
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    readOnly: true,
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: stateProfile.textControllerEmail,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    maxLength: 100,
                    buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 8.0),
                  if (stateProfile.currentUser?.role == UserRole.roastery) ...[
                    TextField(
                      controller: stateProfile.textControllerName,
                      decoration: const InputDecoration(
                        labelText: 'Nama',
                      ),
                      maxLength: 100,
                      buildCounter: (context, {required currentLength, required isFocused, required maxLength}) => Container(),
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 8.0),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: kMaximumDescriptionHeight,
                      ),
                      child: TextField(
                        controller: stateProfile.textControllerAddress,
                        decoration: const InputDecoration(
                          labelText: 'Alamat',
                        ),
                        maxLength: 255,
                        maxLines: null,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                  TextField(
                    controller: stateProfile.textControllerPhoneNumber,
                    decoration: const InputDecoration(
                      labelText: 'Nomor telepon',
                    ),
                    maxLength: 13,
                    inputFormatters: [textFormatterDigitsOnly],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16.0),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: kMaximumDescriptionHeight,
                    ),
                    child: TextField(
                      controller: stateProfile.textControllerDescription,
                      decoration: const InputDecoration(
                        labelText: 'Deskripsi',
                      ),
                      maxLength: 255,
                      maxLines: null,
                    ),
                  ),
                  const SizedBox(height: kBottomFabPadding),
                ],
              ),
            );
          } else if (stateProfile is ProfileError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Edit profil'),
              ),
              body: ErrorOccuredButton(
                onRetryPressed: () => MyApp.profileBloc.add(InitializeProfileData()),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Edit profil'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );
}
