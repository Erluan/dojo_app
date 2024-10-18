import 'package:flutter_modular_app_template/domain/entities/cloud_storage_info/cloud_storage_info.dart';

class State<T> {
  late final String stateCase;
  late final T results;
}


class DashboardState implements State<CloudStorageInfo> {
  final String stateCase;
  late final CloudStorageInfo results;

  DashboardState({required this.stateCase,});
  String get getStateCase => stateCase;

  @override
  set results(CloudStorageInfo _results) {
    // TODO: implement results
  }

  @override
  set stateCase(String _stateCase) {
    // TODO: implement stateCase
  }
}

enum stateCases{
  loading,
  success,
  error,
}
