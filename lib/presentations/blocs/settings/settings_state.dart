import 'package:flutter_modular_app_template/presentations/mvvm/viewmodel_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


// required: associates our `main.dart` with the code generated by Freezed
part 'settings_state.freezed.dart';

@freezed
class SettingsState extends ViewModelState with _$SettingsState {

  const factory SettingsState({
    Locale? locale,
    @Default(ThemeMode.system) ThemeMode? themeMode,
    @Default(true) bool appSecure,
  }) = _SettingsState;

}
