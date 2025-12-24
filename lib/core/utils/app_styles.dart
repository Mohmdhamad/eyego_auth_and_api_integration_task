import 'package:eyego_task/core/utils/app_colors.dart';
import 'package:eyego_task/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    useMaterial3: true,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: AppSizes.sp18,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontSize: AppSizes.sp18,
        color: AppColors.lightWhite,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: AppSizes.sp16,
        color: AppColors.lightWhite,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
