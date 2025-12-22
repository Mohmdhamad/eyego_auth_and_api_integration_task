import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 60,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _buildButtonStyle(),
        child: isLoading
            ? _LoadingIndicator(color: textColor ?? AppColors.white)
            : _ButtonTitle(text: text),
      ),
    );
  }
}

ButtonStyle _buildButtonStyle({
  Color? backgroundColor,
  Color? textColor,
  EdgeInsetsGeometry? padding,
}) {
  return ElevatedButton.styleFrom(
    backgroundColor: backgroundColor ?? AppColors.blue,
    foregroundColor: textColor ?? AppColors.white,
    padding: padding ?? EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}

class _ButtonTitle extends StatelessWidget {
  final String text;

  const _ButtonTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  final Color color;

  const _LoadingIndicator({required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ),
    );
  }
}
