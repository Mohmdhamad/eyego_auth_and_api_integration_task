import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/characters_entity.dart';
import '../repositories/characters_repository.dart';

class GetCharactersUseCase {
  final CharacterRepository repository;

  GetCharactersUseCase({required this.repository});

  Future<Either<Failure, List<CharactersEntities>>> getCharacters() async {
    return await repository.getCharacters();
  }
}
