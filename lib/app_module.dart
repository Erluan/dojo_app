import 'package:flutter_modular/flutter_modular.dart';

import 'app_module_bindings.dart';
import 'app_module_routing.dart';

/// Default app module
class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void binds(Injector i) {
    AppModuleBindings().binds(i);
  }


  @override
  void routes(RouteManager r) {
    AppModuleRouting().routes(r);
  }
}
