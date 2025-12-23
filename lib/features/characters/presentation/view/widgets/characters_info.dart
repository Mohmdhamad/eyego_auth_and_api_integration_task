import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CharactersInfo extends StatelessWidget {
  const CharactersInfo({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(color: AppColors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
