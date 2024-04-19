import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';

import '../../infrastructure/resources/app_colors.dart';
import '../../infrastructure/resources/app_styles.dart';
import '../screens/training/training_details_screen.dart';
import 'bottom_sheets.dart';
import 'buttons.dart';

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.item,
    required this.trainingIndex,
  });

  final TrainingEntity item;
  final int trainingIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(TrainingDetailsScreen.route, extra: trainingIndex);
      },
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
                color: Color(item.color),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Text(
              item.name.toUpperCase(),
              style: AppStyles.jost12Bold,
            ),
            const Spacer(),
            GLIconButton(
              icon: Assets.icons.training.more.svg(),
              onTap: () {
                BottomSheets.showEditTrainingModalBottomSheet(
                  context,
                  item,
                );
              },
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
