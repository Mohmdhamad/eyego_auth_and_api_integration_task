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
        Text(question, style: TextStyle(fontSize: 14, color: AppColors.black)),
        Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            actionText,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
