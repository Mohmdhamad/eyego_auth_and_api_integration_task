import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_sizes.dart';

class DetailsDivider extends StatelessWidget {
  const DetailsDivider({super.key, required this.end});

  final double end;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: AppSizes.h28,
      endIndent: end,
      color: AppColors.yellow,
      thickness: 2,
    );
  }
}
