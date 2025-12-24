import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../domain/entities/characters_entity.dart';
import '../widgets/character_details_list.dart';
import '../widgets/details_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.character});

  final CharactersEntities character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: CustomScrollView(
        slivers: [
          DetailsAppBar(character: character),
          CharacterDetailsList(character: character),
        ],
      ),
    );
  }
}
