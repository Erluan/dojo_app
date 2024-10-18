import 'package:flutter_modular_app_template/presentations/mvvm/viewmodel.dart';
import 'package:flutter/widgets.dart';

import '../utils/utils.dart';

abstract class ViewState<S extends StatefulWidget, M extends ViewModel>
    extends State<S> {
  late final M viewModel;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    viewModel = DM.get<M>();
  }

  @override
  void dispose() {
    super.dispose();
    final isDisposed = DM.dispose<M>();
    if (isDisposed) {
      return;
    }
    viewModel.dispose();
  }
}
