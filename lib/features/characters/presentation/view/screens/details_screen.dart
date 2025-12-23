import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../domain/entities/characters_entity.dart';
import '../widgets/character_details_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.character});

  final CharactersEntities character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.7,
            pinned: true,
            stretch: true,
            backgroundColor: AppColors.grey,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                character.name,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              background: Hero(
                tag: character.id,
                child: Image.network(
                  character.images[0],
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          CharacterDetailsList(character: character),
        ],
      ),
    );
  }
}
