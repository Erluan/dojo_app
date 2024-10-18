import 'package:flutter_modular_app_template/app.dart';
import 'package:flutter_modular_app_template/app_module.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/app_config.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  AppConfig prodAppConfig =
  AppConfig(appName: 'APPNAME', flavor: Environment.prod);

  Widget app = await initializeApp(prodAppConfig);
  runApp(ModularApp(module: AppModule(), child: app));
}
