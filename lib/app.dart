import 'dart:io';
import 'package:flutter_modular_app_template/domain/interfaces/infrastructure/tracking_authorization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/app_config.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/config_reader.dart';
import 'package:flutter_modular_app_template/presentations/blocs/settings/settings_cubit.dart';
import 'package:flutter_modular_app_template/presentations/blocs/settings/settings_state.dart';
import 'package:flutter_modular_app_template/presentations/theme/theme.dart';
import 'package:flutter_modular_app_template/presentations/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentations/mvvm/mvvm.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  await ConfigReader.initialize(env: appConfig.flavor);
  HttpOverrides.global = MyHttpOverrides();
  return MyApp(appConfig);
}

class MyApp extends StatefulWidget {
  final AppConfig appConfig;

  MyApp(this.appConfig);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends ViewState<MyApp, SettingsViewModel> {
  late SettingsViewModel settingsCubit;

  @override
  void initState() {
    super.initState();
    settingsCubit = DM.get<SettingsViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setBlocs();
    });
    Modular.setInitialRoute(Modular.initialRoute);
  }

  void setBlocs() async {
    // final status = await DM.get<TrackingAuthorization>().requestTrackingAuthorization();
    await settingsCubit.loadSettings();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ViewModelBuilder<SettingsViewModel, SettingsState>(
        viewModel: viewModel,
        builder: (context, settings) {
          return MaterialApp.router(
            debugShowCheckedModeBanner:
            widget.appConfig.flavor != 'dev' ? false : true,
            title: 'General Template',
            theme: AppTheme().lightTheme,
            routerConfig: Modular.routerConfig,
            supportedLocales: const [
              Locale('pt', 'BR'),
              Locale('en', 'US'),
            ],
            localizationsDelegates:
              GlobalMaterialLocalizations.delegates,
            builder: (context, child) {
              final theme = Theme.of(context);
              final systemNavigationBarColor =
                  theme.scaffoldBackgroundColor;

              return child!;

            },
          );
        },
      ),
      // ),
    );
  }
}