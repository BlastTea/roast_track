part of '../blocs.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(_authenticationDataLoaded) {
    on<SetAuthenticationState>((event, emit) => emit(event.state ?? _authenticationDataLoaded));

    on<SetShowPasswordSignIn>((event, emit) {
      _showPasswordSignIn = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SetShowPasswordSignUp>((event, emit) {
      _showPasswordSignUp = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SignInPressed>((event, emit) async {
      if (_textControllerUsernameSignIn.text.trim().isEmpty || _textControllerPasswordSignIn.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Username dan password tidak boleh kosong')));
        return;
      }

      _isSiningIn = true;
      emit(_authenticationDataLoaded);

      FocusManager.instance.primaryFocus?.unfocus();

      try {
        await ApiHelper.signIn(
          username: _textControllerUsernameSignIn.text.trim(),
          password: _textControllerPasswordSignIn.text.trim(),
        );
      } catch (e) {
        _isSiningIn = false;
        emit(_authenticationDataLoaded);
        ApiHelper.handleError(e);
        return;
      }

      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      // NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const CompanyPage.select()));

      _isSiningIn = false;
      _showPasswordSignIn = false;
      _showPasswordSignUp = false;
      emit(_authenticationDataLoaded);

      _textControllerUsernameSignIn.clear();
      _textControllerPasswordSignIn.clear();
    });

    on<SignUpPressed>((event, emit) async {
      if (_textControllerUsernameSignUp.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Username masih kosong')));
        return;
      } else if (_textControllerPasswordSignUp.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Password masih kosong')));
        return;
      }

      _isSiningUp = true;
      emit(_authenticationDataLoaded);

      FocusManager.instance.primaryFocus?.unfocus();

      try {
        await ApiHelper.post(
          '/api/v1/sign-up',
          body: {
            'username': _textControllerUsernameSignUp.text.trim(),
            'password': _textControllerPasswordSignUp.text.trim(),
          },
        );
      } catch (e) {
        _isSiningUp = false;
        emit(_authenticationDataLoaded);
        ApiHelper.handleError(e);
        return;
      }

      _isSiningUp = false;
      emit(_authenticationDataLoaded);

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Registrasi berhasil')));
      NavigationHelper.back();
    });
  }

  static final TextEditingController _textControllerUsernameSignIn = TextEditingController();
  static final TextEditingController _textControllerPasswordSignIn = TextEditingController();
  static final TextEditingController _textControllerUsernameSignUp = TextEditingController();
  static final TextEditingController _textControllerPasswordSignUp = TextEditingController();

  static bool _showPasswordSignIn = false;
  static bool _showPasswordSignUp = false;
  static bool _isSiningIn = false;
  static bool _isSiningUp = false;

  static AuthenticationDataLoaded get _authenticationDataLoaded => AuthenticationDataLoaded(
        textControllerUsernameSignIn: _textControllerUsernameSignIn,
        textControllerPasswordSignIn: _textControllerPasswordSignIn,
        textControllerUsernameSignUp: _textControllerUsernameSignUp,
        textControllerPasswordSignUp: _textControllerPasswordSignUp,
        showPasswordSignIn: _showPasswordSignIn,
        showPasswordSignUp: _showPasswordSignUp,
        isSiningIn: _isSiningIn,
        isSiningUp: _isSiningUp,
      );
}
