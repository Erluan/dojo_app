import 'dart:async';

import 'package:flutter_modular_app_template/infrastructure/infrastructure.dart';
import 'package:flutter_modular_app_template/presentations/blocs/settings/settings_state.dart';
import 'package:flutter_modular_app_template/presentations/mvvm/viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsViewModel extends ViewModel<SettingsState> {
  // final StorageRepository storageRepository;
  // final SecurityCheckerClient securityCheckerClient;

  SettingsViewModel({
    // required this.storageRepository,
    // required this.securityCheckerClient,
    Locale? locale,
    ThemeMode? themeMode,
  }) : super(SettingsState(
    locale: locale,
    themeMode: themeMode,
  ));

  Future<void> loadSettings() async {
    // final themeMode = await storageRepository.themeMode;
    // final locale = await storageRepository.locale;
    // await checkSecurity();
    // emit(state.copyWith(
    //   themeMode: themeMode,
    //   locale: locale,
    // ));
  }
  //
  // Future<void> changeThemeMode(ThemeMode themeMode) async {
  //   emit(state.copyWith(themeMode: themeMode));
  //   await storageRepository.saveThemeMode(themeMode);
  // }
  //
  // Future<void> changeLocale(Locale locale) async {
  //   emit(state.copyWith(locale: locale));
  //   await storageRepository.saveLocale(locale);
  // }
  //
  // Future<void> clearCache() async {
  //   emit(const SettingsState());
  //   await storageRepository.clearConfigs();
  // }

}
