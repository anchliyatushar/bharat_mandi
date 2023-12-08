enum UiStates<T> {
  NONE,
  LOADING,
  ERROR,
  SUCCESS;

  const UiStates({this.message, this.data});

  final String? message;
  final T? data;
}
