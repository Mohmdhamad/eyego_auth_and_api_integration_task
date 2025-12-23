import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/characters_entity.dart';

abstract class CharacterRepository {
  Future<Either<Failure, List<CharactersEntities>>> getCharacters();
}
