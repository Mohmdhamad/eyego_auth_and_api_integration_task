import 'package:dio/dio.dart';

import '../../../../core/database/api/api_consumer.dart';
import '../../../../core/database/api/end_ponits.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../characters/data/models/characters_model.dart';

class CharacterRemoteDataSource {
  final ApiConsumer api;

  CharacterRemoteDataSource({required this.api});

  Future<List<CharactersModel>> getCharacters() async {
    try {
      final List response = await api.get(EndPoint.character);
      final characters = response
          .map((character) => CharactersModel.fromJson(character))
          .toList();
      return characters;
    } on DioException catch (e) {
      handleDioException(e);
      rethrow;
    }
  }
}
