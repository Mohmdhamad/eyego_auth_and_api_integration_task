import 'package:eyego_task/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../domain/entities/characters_entity.dart';

class CharsCard extends StatelessWidget {
  const CharsCard({super.key, required this.character});

  final CharactersEntities character;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(AppSizes.h8),
      padding: EdgeInsetsGeometry.all(AppSizes.w8),
      decoration: BoxDecoration(
        color: AppColors.lightWhite,
        borderRadius: BorderRadius.circular(AppSizes.r15),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.details, arguments: character);
        },
        child: GridTile(
          footer: Hero(
            tag: character.id,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.w16,
                vertical: AppSizes.h16,
              ),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: Text(
                character.name,
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: Container(
            color: AppColors.grey,
            child: character.images.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    fit: BoxFit.fill,
                    placeholder: AppTexts.loading,
                    image: character.images[0],
                  )
                : Image.asset(AppTexts.placeholder),
          ),
        ),
      ),
    );
  }
}
