import '../database/api/end_ponits.dart';

class ErrorModel {
  final String errorMessage;

  ErrorModel({ required this.errorMessage});
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKey.errorMessage].toString(),
    );
  }
}
