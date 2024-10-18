import 'package:flutter_modular_app_template/presentations/pages/authentication/views/sign_in/sign_in_view.dart';
import 'package:flutter_modular_app_template/presentations/pages/authentication/views/sign_up/sign_up_view.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/views/dashboard_view.dart';
import 'package:flutter_modular_app_template/presentations/pages/home/views/home_view.dart';
import 'package:flutter_modular_app_template/presentations/routes/app_module_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModuleRouting {
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomeView(), children: [
      ChildRoute(
        AppModuleRoutes.signIn.path,
        child: (context) => const SignInView(),
        transition: TransitionType.noTransition,
      ),
      ChildRoute(
        AppModuleRoutes.signUp.path,
        child: (context) => const SignUpView(),
        transition: TransitionType.noTransition,
      ),
    ]);
  }
}
