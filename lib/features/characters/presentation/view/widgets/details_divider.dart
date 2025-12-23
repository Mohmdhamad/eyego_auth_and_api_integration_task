import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class DetailsDivider extends StatelessWidget {
  const DetailsDivider({super.key, required this.end});

  final double end;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      endIndent: end,
      color: AppColors.yellow,
      thickness: 2,
    );
  }
}
