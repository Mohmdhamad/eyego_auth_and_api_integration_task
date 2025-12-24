import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class AuthFooterAction extends StatelessWidget {
  final String question;
  final String actionText;
  final VoidCallback onPressed;

  const AuthFooterAction({
    super.key,
    required this.question,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: AppColors.grey),
        ),
        Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            actionText,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: AppColors.blue),
          ),
        ),
      ],
    );
  }
}
