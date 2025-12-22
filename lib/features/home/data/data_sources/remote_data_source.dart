import 'package:dio/dio.dart';
import 'package:eyego_task/core/database/api/api_consumer.dart';
import 'package:eyego_task/core/database/api/end_ponits.dart';
import 'package:eyego_task/core/errors/exceptions.dart';

class RemoteDataSource {
  final ApiConsumer api;

  RemoteDataSource({required this.api});

  Future getCharacters()async{
    try {
      final response = await api.get(EndPoint.character);
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}
