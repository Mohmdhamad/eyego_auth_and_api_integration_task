import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../domain/entities/characters_entity.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key, required this.character});
  final CharactersEntities character;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
          style: Theme.of(context).textTheme.titleLarge,
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
    );
  }
}
