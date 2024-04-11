import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/widgets/gl_icon_button.dart';

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.name,
    required this.colorCode,
    required this.onTap,
    required this.onMoreTap,
  });

  final String name;
  final int colorCode;
  final VoidCallback onTap;
  final VoidCallback onMoreTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.white),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 20,
              margin: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Color(colorCode),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Text(
              name,
              style: AppStyles.jost12Bold,
            ),
            const Spacer(),
            GLIconButton(
              icon: Assets.icons.training.more.svg(),
              onTap: onMoreTap,
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
