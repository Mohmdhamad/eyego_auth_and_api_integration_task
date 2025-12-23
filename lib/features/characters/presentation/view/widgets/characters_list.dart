import 'package:flutter/material.dart';

import '../../../domain/entities/characters_entity.dart';
import 'chars_card.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key, required this.characters});
  final List<CharactersEntities> characters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 2.0,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: characters.length,
      itemBuilder: (BuildContext context, int index) {
        return CharsCard(character: characters[index]);
      },
    );
  }
}
