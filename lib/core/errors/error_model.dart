import '../database/api/end_ponits.dart';

class ErrorModel {
  final dynamic status;
  final String errorMessage;

  ErrorModel({required this.status, required this.errorMessage});
  factory ErrorModel.fromJson(Map jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKey.errorMessage].toString(),
      status: jsonData[ApiKey.status].toString()  ,
    );
  }
}
