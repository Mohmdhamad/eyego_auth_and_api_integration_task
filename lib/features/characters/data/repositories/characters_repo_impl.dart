import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/characters_entity.dart';
import '../../domain/repositories/characters_repository.dart';
import '../data_sources/remote_data_source.dart';

class CharactersRepoImpl implements CharacterRepository {
  final CharacterRemoteDataSource remoteDataSource;

  CharactersRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CharactersEntities>>> getCharacters() async {
    try {
      final characters = await remoteDataSource.getCharacters();
      return right(characters);
    } on ServerException catch (e) {
      return left(Failure(errMessage: e.toString()));
    }
  }
}
