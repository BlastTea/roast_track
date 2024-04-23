part of '../blocs.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    _textControllerEmail.addListener(() => _currentUser?.email = _textControllerEmail.text.trim());

    _textControllerName.addListener(() => _currentUser?.name = _textControllerName.text.trim());

    _textControllerAddress.addListener(() => _currentUser?.address = _textControllerAddress.text.trim());

    _textControllerPhoneNumber.addListener(() => _currentUser?.phoneNumber = _textControllerPhoneNumber.text.trim());

    _textControllerDescription.addListener(() => _currentUser?.description = _textControllerDescription.text.trim());

    on<SetProfileState>((event, emit) => emit(event.state ?? _profileDataLoaded));

    on<SetProfileToInitial>((event, emit) {
      _currentUser = null;
      emit(ProfileInitial());
    });

    on<InitializeProfileData>((event, emit) {
      _currentUser = currentUser?.copyWith();

      _textControllerEmail.text = _currentUser?.email ?? '';
      if (_currentUser?.role == UserRole.roastery) {
        _textControllerName.text = _currentUser?.name ?? '';
        _textControllerAddress.text = _currentUser?.address ?? '';
      }
      _textControllerPhoneNumber.text = _currentUser?.phoneNumber ?? '';
      _textControllerDescription.text = _currentUser?.description ?? '';

      emit(_profileDataLoaded);
    });

    on<SaveProfilePressed>((event, emit) async {
      if (_currentUser?.email?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Email masih kosong')));
        return;
      } else if (_currentUser?.name?.isEmpty ?? true && _currentUser?.role == UserRole.roastery) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Nama masih kosong')));
        return;
      } else if (_currentUser?.address?.isEmpty ?? true && _currentUser?.role == UserRole.roastery) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Alamat masih kosong')));
        return;
      } else if (_currentUser?.phoneNumber?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Nomor telepon masih kosong')));
        return;
      } else if (_currentUser?.description?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Deskripsi masih kosong')));
        return;
      }

      showLoadingDialog();

      FocusManager.instance.primaryFocus?.unfocus();

      try {
        _currentUser = await ApiHelper.post(
          '/api/v1/update-profile',
          body: _currentUser?.toJson(),
        ).then((value) => User.fromJson(value['data']));
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Profil berhasil diperbarui')));

      currentUser = _currentUser?.copyWith();
      emit(_profileDataLoaded);
    });
  }

  final TextEditingController _textControllerEmail = TextEditingController();
  final TextEditingController _textControllerName = TextEditingController();
  final TextEditingController _textControllerAddress = TextEditingController();
  final TextEditingController _textControllerPhoneNumber = TextEditingController();
  final TextEditingController _textControllerDescription = TextEditingController();

  User? _currentUser;

  ProfileDataLoaded get _profileDataLoaded => ProfileDataLoaded(
        textControllerEmail: _textControllerEmail,
        textControllerName: _textControllerName,
        textControllerAddress: _textControllerAddress,
        textControllerPhoneNumber: _textControllerPhoneNumber,
        textControllerDescription: _textControllerDescription,
        currentUser: currentUser,
      );
}
