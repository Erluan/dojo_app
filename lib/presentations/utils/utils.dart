// ignore_for_file: non_constant_identifier_names

import '../../domain/interfaces/interfaces.dart';
import '../../infrastructure/infrastructure.dart';

///
/// Provides a static access to a singleton that implements [Navigation]
///
final Navigation Nav = ModularNavigation.i();

///
/// Provides a static access to a singleton that implements [DependencyManager]
///
final DependencyManager DM = ModularDependencyManager.i();
