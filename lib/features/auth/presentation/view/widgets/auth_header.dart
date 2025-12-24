import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_sizes.dart';

class AuthHeaderMessage extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthHeaderMessage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.h10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: AppColors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.yellow,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
