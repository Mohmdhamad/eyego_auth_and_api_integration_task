import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../../characters/domain/entities/characters_entity.dart';
import '../../../characters/domain/use_cases/get_characters_use_case.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersInitial());
  final GetCharactersUseCase getCharactersUseCase = sl<GetCharactersUseCase>();
  List<CharactersEntities> allCharacters = [];
  List<CharactersEntities> searchedCharacters = [];
  bool isSearching = false;

  getCharacter() async {
    emit(CharactersLoading());
    final characters = await getCharactersUseCase.getCharacters();
    characters.fold(
      (failure) => emit(CharactersFailure(error: failure.errMessage)),
      (character) {
        allCharacters = character;
        emit(CharactersSuccess(characters: character));
      },
    );
  }

  search(String searchedCharacter) {
    searchedCharacters = allCharacters
        .where(
          (character) => character.name.toLowerCase().startsWith(
            searchedCharacter.toLowerCase(),
          ),
        )
        .toList();
    emit(CharactersSearching(characters: searchedCharacters));
  }

  void startSearch() {
    isSearching = true;
    emit(ShowSearching());
  }

  void stopSearch() {
    isSearching = false;
    emit(CharactersSuccess(characters: allCharacters));
  }

  void clearSearch() {
    searchedCharacters.clear();
    emit(CharactersSuccess(characters: allCharacters));
  }
}
