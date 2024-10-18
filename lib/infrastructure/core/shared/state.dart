class IState<T> {
  late final String stateCase;
  late final T? results;
  IState({
    required this.stateCase,
    this.results,
  });
}