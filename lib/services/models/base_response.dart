class BaseResponse<T> {
  final int statusCode;
  final String message;
  final T result;
  BaseResponse(
      {required this.statusCode, required this.message, required this.result});

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, Function(dynamic) create) {
    return BaseResponse<T>(
      statusCode: json["statusCode"],
      message: json["message"],
      result: create(json["result"]),
    );
  }
}
