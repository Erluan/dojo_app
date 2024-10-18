/// Object that clusters all arguments and parameters retrieved or produced during a route search.
abstract class NavigationArguments {
  Map<String, dynamic> get params;

  Uri get uri;

  dynamic get data;

  Map<String, String> get queryParams => uri.queryParameters;

  Map<String, List<String>> get queryParamsAll => uri.queryParametersAll;
}
