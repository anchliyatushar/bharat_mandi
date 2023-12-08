class Responser<T> {
  final String? message;
  final bool isSuccess;
  final T? data;

  Responser({
    required this.isSuccess,
    this.message,
    this.data,
  });

  Responser<T> copyWith({
    String? message,
    bool? isSuccess,
    T? data,
  }) {
    return Responser<T>(
      message: message ?? this.message,
      isSuccess: isSuccess ?? this.isSuccess,
      data: data ?? this.data,
    );
  }
}
