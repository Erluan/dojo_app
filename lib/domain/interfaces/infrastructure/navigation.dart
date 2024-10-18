import 'package:flutter/widgets.dart';

import 'navigation_arguments.dart';

/// Interface for navigation
abstract class Navigation {
  NavigationArguments get args;

  String get currentPath;

  Future<T?> pushNamed<T extends Object?>(
      Object path, {
        Object? arguments,
        bool? forRoot,
      });

  Future<Object?> pushReplacementNamed(
      Object path, {
        Object? arguments,
        bool? forRoot,
      });

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
      Object path,
      bool Function(Route) predicate, {
        Object? arguments,
        bool? forRoot,
      });

  void navigate(Object path, {dynamic arguments});

  void pop<T extends Object>({T? response});

  void popUntil(bool Function(Route<dynamic>) predicate);

  bool canPop();

  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
      String routeName, {
        TO? result,
        Object? arguments,
        bool forRoot = false,
      });

  Future<bool> maybePop<T extends Object?>([T? result]);

  void addListener(VoidCallback listener);

  void removeListener(VoidCallback listener);

  List<String> get history;
}
