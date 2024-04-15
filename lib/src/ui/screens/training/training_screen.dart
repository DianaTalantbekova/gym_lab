import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/ui/screens/training/training_details_screen.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/bottom_sheets.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../../widgets/training_card.dart';
import '../add_exercise/add_exercise_screen.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  static const String route = "training";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        leading: RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: "GYM"),
              TextSpan(
                text: "LAB ",
                style: AppStyles.jost12Bold.copyWith(color: AppColors.blue),
              ),
              const TextSpan(text: "/ ТРЕНИРОВКИ"),
            ],
            style: AppStyles.jost12Bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Gap(12),
          TrainingCard(
            name: "ГРУДЬ , БИЦЕПС",
            colorCode: 0xFF6499E9,
            onTap: () {
              context.pushNamed(AddExerciseScreen.route);
            },
            onMoreTap: () {
              BottomSheets.showEditTrainingModalBottomSheet(context);
            },
          ),
          const Gap(16),
          TrainingCard(
            name: "ПЛЕЧИ , НОГИ",
            colorCode: 0xFFAECEEB,
            onTap: () {
              context.pushNamed(TrainingDetailsScreen.route);
            },
            onMoreTap: () {
              BottomSheets.showEditTrainingModalBottomSheet(context);
            },
          ),
          const Spacer(),
          GLButton(
            color: AppColors.blue,
            text: "СОЗДАТЬ НОВУЮ ТРЕНИРОВКУ",
            onPressed: () {
              BottomSheets.showCreateTrainingModalBottomSheet(context);
            },
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
