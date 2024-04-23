part of '../blocs.dart';

class RoasteryBloc extends Bloc<RoasteryEvent, RoasteryState> {
  RoasteryBloc() : super(RoasteryInitial()) {
    _textControllerUsername.addListener(() => _currentRoastery.username = _textControllerUsername.text.trim());

    _textControllerEmail.addListener(() => _currentRoastery.email = _textControllerEmail.text.trim());

    _textControllerName.addListener(() => _currentRoastery.name = _textControllerName.text.trim());

    _textControllerAddress.addListener(() => _currentRoastery.address = _textControllerAddress.text.trim());

    _textControllerPhoneNumber.addListener(() => _currentRoastery.phoneNumber = _textControllerPhoneNumber.text.trim());

    _textControllerDescription.addListener(() => _currentRoastery.description = _textControllerDescription.text.trim());

    on<SetRoasteryState>((event, emit) => emit(event.state ?? _roasteryDataLoaded));

    on<SetRoasteryToInitial>((event, emit) {
      _isInitializing = false;

      _roasteries.clear();

      emit(RoasteryInitial());
    });

    on<InitializeRoasteryData>((event, emit) async {
      if (_isInitializing) {
        event.completer?.complete(false);
        return;
      }

      _isInitializing = true;

      if (event.completer == null) emit(RoasteryInitial());

      try {
        _roasteries = await ApiHelper.get(
          '/api/v1/roasteries',
        ).then((value) => (value['data'] as List).map((e) => User.fromJson(e)).toList());
      } catch (e) {
        _isInitializing = false;
        event.completer?.complete(true);
        emit(RoasteryError());
        return;
      }

      _isInitializing = false;
      _keyList = GlobalKey();
      event.completer?.complete(true);
      emit(_roasteryDataLoaded);
    });

    on<EditRoastery>((event, emit) {
      _originalRoastery = event.value.copyWith();
      _currentRoastery = event.value.copyWith();

      _textControllerUsername.text = _currentRoastery.username ?? '';
      _textControllerEmail.text = _currentRoastery.email ?? '';
      // _textControllerName.text = _currentRoastery.name ?? '';
      // _textControllerAddress.text = _currentRoastery.address ?? '';
      // _textControllerPhoneNumber.text = _currentRoastery.phoneNumber ?? '';
      // _textControllerDescription.text = _currentRoastery.description ?? '';

      emit(_roasteryDataLoaded);
    });

    on<SetCurrentRoastery>((event, emit) {
      _currentRoastery = event.value.copyWith();
      emit(_roasteryDataLoaded);
    });

    on<GeneratePasswordRoasteryPressed>((event, emit) => _textControllerPassword.text = generatePassword());

    on<ShowPasswordRoasteryPressed>((event, emit) {
      _isShowPassword = event.value;
      emit(_roasteryDataLoaded);
    });

    on<SaveRoasteryPressed>((event, emit) async {
      bool isAdd = _currentRoastery.id == null;

      if (_currentRoastery.username?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Username masih kosong')));
        return;
      } else if (_currentRoastery.email?.isEmpty ?? true) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Email masih kosong')));
        return;
      } else if (_textControllerPassword.text.trim().isEmpty && isAdd) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Password masih kosong')));
        return;
      }
      // else if (_currentRoastery.name?.isEmpty ?? true) {
      //   NavigationHelper.clearSnackBars();
      //   NavigationHelper.showSnackBar(const SnackBar(content: Text('Nama masih kosong')));
      //   return;
      // } else if (_currentRoastery.address?.isEmpty ?? true) {
      //   NavigationHelper.clearSnackBars();
      //   NavigationHelper.showSnackBar(const SnackBar(content: Text('Alamat masih kosong')));
      //   return;
      // } else if (_currentRoastery.phoneNumber?.isEmpty ?? true) {
      //   NavigationHelper.clearSnackBars();
      //   NavigationHelper.showSnackBar(const SnackBar(content: Text('Nomor telepon masih kosong')));
      //   return;
      // } else if (_currentRoastery.description?.isEmpty ?? true) {
      //   NavigationHelper.clearSnackBars();
      //   NavigationHelper.showSnackBar(const SnackBar(content: Text('Deskripsi masih kosong')));
      //   return;
      // }

      showLoadingDialog();

      FocusManager.instance.primaryFocus?.unfocus();

      User roastery;

      try {
        String password = _textControllerPassword.text.trim();

        if (isAdd) {
          roastery = await ApiHelper.post(
            '/api/v1/roasteries',
            body: _currentRoastery.toJson()..addAll({'password': password}),
          ).then((value) => User.fromJson(value['data']));
        } else {
          roastery = await ApiHelper.put(
            '/api/v1/roasteries',
            body: _currentRoastery.toJson()..addAll(password.isEmpty ? {} : {'password': password}),
          ).then((value) => User.fromJson(value['data']));
        }
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      if (isAdd) {
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil ditambah')));
      } else {
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil diubah')));
      }

      await Future.delayed(Durations.medium3);

      if (isAdd) {
        _roasteries.add(roastery);
      } else {
        int index = _roasteries.indexWhere((element) => element.id == _currentRoastery.id);
        _roasteries[index] = roastery;
      }

      _textControllerPassword.clear();
      _isShowPassword = false;
      _originalRoastery = User();
      _currentRoastery = User();
      emit(_roasteryDataLoaded);

      if (isAdd) {
        await _controllerList.animateTo(_controllerList.position.maxScrollExtent, duration: Durations.medium2, curve: Curves.fastOutSlowIn);
        DefaultAnimatedListTransition.insertItemList(index: _roasteries.length - 1, state: _keyList.currentState!);
      }
    });

    on<DeleteRoasteryPressed>((event, emit) async {
      bool? isDeleted = await showDeleteDialog(titleText: 'Hapus ${event.value.username}?');

      if (!(isDeleted ?? false)) return;

      showLoadingDialog();

      try {
        await ApiHelper.delete(
          '/api/v1/roasteries',
          body: {'id': event.value.id},
        );
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();

      int index = _roasteries.indexWhere((element) => element.id == event.value.id);

      _roasteries.removeAt(index);
      emit(_roasteryDataLoaded);

      await DefaultAnimatedListTransition.removeItemList(
        index: index,
        state: _keyList.currentState!,
        builder: (context, animation) => RoasteryFragment.listItem(context: context, roastery: event.value, animation: animation),
      );
    });
  }

  GlobalKey<AnimatedListState> _keyList = GlobalKey();

  final ScrollController _controllerList = ScrollController();

  final FocusNode _focusNodeName = FocusNode();

  final TextEditingController _textControllerUsername = TextEditingController();
  final TextEditingController _textControllerEmail = TextEditingController();
  final TextEditingController _textControllerPassword = TextEditingController();
  final TextEditingController _textControllerName = TextEditingController();
  final TextEditingController _textControllerAddress = TextEditingController();
  final TextEditingController _textControllerPhoneNumber = TextEditingController();
  final TextEditingController _textControllerDescription = TextEditingController();

  bool _isInitializing = false;
  bool _isShowPassword = false;

  List<User> _roasteries = [];

  User _originalRoastery = User();
  User _currentRoastery = User();

  RoasteryDataLoaded get _roasteryDataLoaded => RoasteryDataLoaded(
        keyList: _keyList,
        controllerList: _controllerList,
        focusNodeName: _focusNodeName,
        textControllerUsername: _textControllerUsername,
        textControllerEmail: _textControllerEmail,
        textControllerPassword: _textControllerPassword,
        textControllerName: _textControllerName,
        textControllerAddress: _textControllerAddress,
        textControllerPhoneNumber: _textControllerPhoneNumber,
        textControllerDescription: _textControllerDescription,
        isShowPassword: _isShowPassword,
        roasteries: _roasteries,
        originalRoastery: _originalRoastery,
        currentRoastery: _currentRoastery,
      );

  String generatePassword({int length = 8}) {
    const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
    const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const String specialCharacters = '!@#\$%^&*()_+-=[]{}|;:",.<>?';

    // Pastikan panjang minimal adalah 3 untuk memenuhi syarat
    if (length < 3) {
      throw Exception('Length must be at least 3 to accommodate one lowercase, one uppercase, and one special character');
    }

    // Fungsi untuk mendapatkan karakter secara acak dari sebuah string
    String getRandomChar(String str) {
      Random random = Random();
      int index = random.nextInt(str.length);
      return str[index];
    }

    // Dimulai dengan satu huruf kecil
    String result = getRandomChar(lowercase);

    // Tambahkan satu huruf besar dan satu karakter spesial
    result += getRandomChar(uppercase);
    result += getRandomChar(specialCharacters);

    // Isi sisa string dengan huruf kecil
    while (result.length < length) {
      result += getRandomChar(lowercase);
    }

    // Mengacak string untuk memastikan bahwa huruf besar dan karakter spesial tersebar secara acak
    List<String> charList = result.split('');
    charList.shuffle(Random());
    return charList.join('');
  }
}
