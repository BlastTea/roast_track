import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_widget/m_widget.dart';
import 'package:roast_track/blocs/blocs.dart';
import 'package:roast_track/services/services.dart';
import 'package:roast_track/utils/utils.dart';
import 'package:roast_track/views/pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await MWidget.initialize(
    defaultLanguage: LanguageType.indonesiaIndonesian,
    defaultTheme: ThemeValue(
      useDynamicColors: true,
      withCustomColors: true,
      color: const Color(0xFF61381E),
      themeMode: ThemeMode.dark,
    ),
  );

  await ApiHelper.signInWithToken();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static AuthenticationBloc authenticationBloc = AuthenticationBloc();

  @override
  Widget build(BuildContext context) => MWidgetDynamicColorBuilder(
        builder: (context, theme, darkTheme, themeMode, colorScheme) => MWidgetTheme(
          dialogTheme: const MWidgetDialogThemeData(
            primaryFilledButton: true,
          ),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => authenticationBloc),
            ],
            child: MaterialApp(
              theme: theme.copyWith(
                inputDecorationTheme: InputDecorationTheme(
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 12.0, 12.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              ),
              darkTheme: darkTheme.copyWith(
                inputDecorationTheme: InputDecorationTheme(
                  contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 12.0, 12.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                ),
              ),
              themeMode: themeMode,
              debugShowCheckedModeBanner: false,
              title: appName,
              navigatorKey: navigatorKey,
              scaffoldMessengerKey: scaffoldMessengerKey,
              home: currentUser != null ? HomePage(key: homePageKey) : const SignInPage(),
            ),
          ),
        ),
      );
}
