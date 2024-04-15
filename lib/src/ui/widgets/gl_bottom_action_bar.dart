import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../infrastructure/resources/app_colors.dart';
import 'buttons.dart';

class GLBottomActionBar extends StatelessWidget {
  const GLBottomActionBar({
    super.key,
    required this.onSupersetTap,
    required this.onAddTap,
  });

  final VoidCallback onSupersetTap;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.bottomBarColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.bottomBarColor,
            blurRadius: 68,
            spreadRadius: 68,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 12,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Opacity(
                opacity: 1,
                child: GLButton(
                  text: "СУПЕРСЕТ",
                  onPressed: onSupersetTap,
                ),
              ),
            ),
            const Gap(8),
            Expanded(
              child: Opacity(
                opacity: 1,
                child: GLButton(
                  color: AppColors.blue,
                  text: "ДОБАВИТЬ (4)",
                  onPressed: onAddTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
