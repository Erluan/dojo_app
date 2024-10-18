import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'viewmodel_state.dart';

abstract class ViewModel<State extends ViewModelState> extends BlocBase<State>
    implements Disposable {
  /// If view model is initialized
  bool isInitialized = false;

  ViewModel(initialState) : super(initialState) {
    initViewModel();
  }

  /// Called when the [ViewModel] is created
  @mustCallSuper
  void initViewModel() {
    assert(
    !isInitialized,
    'View Model has already been initialized! The initialization occurs automatically on life cycle, so you should not call initViewModel manually.',
    );
    isInitialized = true;
  }

  @override
  void dispose() {
    super.close();
  }
}
