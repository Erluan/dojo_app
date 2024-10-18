import 'package:flutter_modular_app_template/presentations/navigation/base_path.dart';

class AppModuleRoutes {
  // Initial Route
  static const BasePath initial = BasePath('/');

  // Authentication
  static const BasePath signIn = BasePath('/sign-in');
  static const BasePath signUp = BasePath('/sign-up');
  static const BasePath account = BasePath('/account');

  // Dashboard
  static const BasePath dashboard = BasePath('/dashboard');
}