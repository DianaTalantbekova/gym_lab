import 'package:flutter/material.dart';

import '../../../../infrastructure/resources/app_colors.dart';
import '../../../../infrastructure/resources/app_styles.dart';

class KeyboardKey extends StatelessWidget {
  const KeyboardKey({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.jost20Bold,
        ),
      ),
    );
  }
}
