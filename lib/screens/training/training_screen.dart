import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/screens/add_exercise/add_exercise_screen.dart';
import 'package:gym_labb/screens/training/training_details_screen.dart';
import 'package:gym_labb/widgets/create_training_modal_bottom_sheet.dart';
import 'package:gym_labb/widgets/edit_training_modal_bottom_sheet.dart';
import 'package:gym_labb/widgets/gl_app_bar.dart';
import 'package:gym_labb/widgets/gl_button.dart';
import 'package:gym_labb/widgets/gl_scaffold.dart';
import 'package:gym_labb/widgets/training_card.dart';

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
              showEditTrainingModalBottomSheet(context);
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
              showEditTrainingModalBottomSheet(context);
            },
          ),
          const Spacer(),
          GLButton(
            color: AppColors.blue,
            text: "СОЗДАТЬ НОВУЮ ТРЕНИРОВКУ",
            onPressed: () {
              showCreateTrainingModalBottomSheet(context);
            },
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
