import '../../errors/error_model.dart';
import '../../errors/exceptions.dart';
import 'end_ponits.dart';

class ApiInterpreter {
  static void checkResponseStatus(Map<String, dynamic> data) {
    if (data[ApiKey.status] != ApiKey.success) {
      throw ServerException(ErrorModel.fromJson(data));
    }
  }
}
