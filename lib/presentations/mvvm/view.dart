// A mixin to inject a [ViewModel] into a page/widget
import 'package:flutter_modular_app_template/presentations/mvvm/viewmodel.dart';

import '../../domain/interfaces/interfaces.dart';
import '../utils/utils.dart';

mixin ViewMixin<VM extends ViewModel> {
  final VM viewModel = DM.get<VM>();

  final NavigationArguments args = Nav.args;
}
