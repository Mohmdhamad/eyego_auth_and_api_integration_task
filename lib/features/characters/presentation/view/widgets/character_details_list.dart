import 'package:flutter/material.dart';

import '../../../../../core/utils/app_sizes.dart';
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
          margin: EdgeInsets.fromLTRB(
            AppSizes.h16,
            AppSizes.h16,
            AppSizes.h16,
            0,
          ),
          padding: EdgeInsets.all(AppSizes.h16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CharactersInfo(title: 'Full name : ', value: character.name),
              DetailsDivider(end: AppSizes.w285),
              CharactersInfo(
                title: 'Jobs : ',
                value: character.occupations.join(' / '),
              ),
              DetailsDivider(end: AppSizes.w325),
              CharactersInfo(title: 'Actor : ', value: character.actor),
              DetailsDivider(end: AppSizes.w325),
              CharactersInfo(title: 'Birthday : ', value: character.birthday),
              DetailsDivider(end: AppSizes.w300),
              CharactersInfo(title: 'Status : ', value: character.status),
              DetailsDivider(end: AppSizes.w315),
              CharactersInfo(
                title: 'Productions : ',
                value: character.productions.join('/'),
              ),
              DetailsDivider(end: AppSizes.w270),
              SizedBox(height: MediaQuery.of(context).size.height * 0.5),
            ],
          ),
        ),
      ]),
    );
  }
}
