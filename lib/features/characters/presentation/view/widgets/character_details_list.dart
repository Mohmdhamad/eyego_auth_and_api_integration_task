import 'package:flutter/material.dart';

import '../../../domain/entities/characters_entity.dart';
import 'characters_info.dart';
import 'details_divider.dart';

class CharacterDetailsList extends StatelessWidget {
  const CharacterDetailsList({super.key, required this.character});

  final CharactersEntities character;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CharactersInfo(title: 'Full name : ', value: character.name),
              DetailsDivider(end: 285),
              CharactersInfo(
                title: 'Jobs : ',
                value: character.occupations.join(' / '),
              ),
              DetailsDivider(end: 325),
              CharactersInfo(title: 'Actor : ', value: character.actor),
              DetailsDivider(end: 325),
              CharactersInfo(title: 'Birthday : ', value: character.birthday),
              DetailsDivider(end: 300),
              CharactersInfo(title: 'Status : ', value: character.status),
              DetailsDivider(end: 315),
              CharactersInfo(
                title: 'Productions : ',
                value: character.productions.join('/'),
              ),

              DetailsDivider(end: 270),
              SizedBox(height: MediaQuery.of(context).size.height * 0.5),
            ],
          ),
        ),
      ]),
    );
  }
}
