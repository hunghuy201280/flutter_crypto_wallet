class BaseDto<T> {
  final int statusCode;
  final String message;
  final T result;
  BaseDto(
      {required this.statusCode, required this.message, required this.result});

  factory BaseDto.fromJson(
      Map<String, dynamic> json, Function(dynamic) create) {
    return BaseDto<T>(
      statusCode: json["statusCode"],
      message: json["message"],
      result: create(json["result"]),
    );
  }
}
