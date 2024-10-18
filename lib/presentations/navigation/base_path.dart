import 'package:equatable/equatable.dart';

/// Utility class to define a route path.
///
/// The path `/user/home` must be defined with [path] `/user` and [rootPath] `/home`.
///
/// The [completePath] getter returns the complete path, including [rootPath]
class BasePath with EquatableMixin {
  final String path;

  final BasePath? rootPath;

  const BasePath(this.path, [this.rootPath]);

  String get completePath {
    final base = rootPath?.completePath ?? '';
    return '$base${!base.endsWith('/') ? path : path.replaceFirst('/', '')}';
  }

  String get relativePath => path.replaceFirst('/', '');

  @override
  String toString() => completePath;

  @override
  List<Object?> get props => [path, rootPath];
}
