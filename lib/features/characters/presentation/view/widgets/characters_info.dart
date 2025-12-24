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
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
