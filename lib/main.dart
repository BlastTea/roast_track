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
  static OrderBloc orderBloc = OrderBloc();
  static CompanyBloc companyBloc = CompanyBloc();
  static RoastingBloc roastingBloc = RoastingBloc();

  @override
  Widget build(BuildContext context) => MWidgetDynamicColorBuilder(
        builder: (context, theme, darkTheme, themeMode, colorScheme) => MWidgetTheme(
          dialogTheme: MWidgetDialogThemeData(
            primaryFilledButton: true,
            onRenderMessage: (context, message) {
              if (message.contains('404')) {
                return const SelectableText('URL tidak ditemukan, silahkan update aplikasi');
              } else if (message.contains('500')) {
                return const SelectableText('Terjadi error pada server');
              } else if (message.contains('http')) {
                return const SelectableText('Gagal terhubung ke server, silahkan periksa koneksi internet Anda');
              }
              // else if (message.contains('<!doctype html>') || message.contains('<!DOCTYPE html>')) {
              //   WebView(controller: WebViewController()..init(context: context, setState: setState, uri: uri))

              //   return SizedBox.fromSize(
              //     size: Size.square(MediaQuery.sizeOf(context).width - 32.0),
              //     child: SingleChildScrollView(
              //       child: Html(data: message),
              //     ),
              //   );
              // }

              return SelectableText(message);
            },
          ),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => authenticationBloc),
              BlocProvider(create: (context) => orderBloc),
              BlocProvider(create: (context) => companyBloc),
              BlocProvider(create: (context) => roastingBloc),
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
              home: currentUser != null ? const CompanyPage.select() : const SignInPage(),
            ),
          ),
        ),
      );
}
