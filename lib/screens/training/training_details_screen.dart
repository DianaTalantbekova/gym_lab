import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/screens/add_exercise/add_exercise_screen.dart';
import 'package:gym_labb/widgets/action_button.dart';
import 'package:gym_labb/widgets/difficulty_modal_bottom_sheet.dart';
import 'package:gym_labb/widgets/gl_app_bar.dart';
import 'package:gym_labb/widgets/gl_button.dart';
import 'package:gym_labb/widgets/gl_icon_button.dart';
import 'package:gym_labb/widgets/gl_scaffold.dart';
import 'package:gym_labb/widgets/keyboard_modal_bottom_sheet.dart';

class TrainingDetailsScreen extends StatelessWidget {
  const TrainingDetailsScreen({super.key});

  static const String route = "training-details";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        leading: GLIconButton(
          icon: Assets.icons.navigation.back.svg(),
          onTap: () {
            context.pop();
          },
        ),
        action: GLIconButton(
          icon: Assets.icons.add.svg(),
          onTap: () {
            context.pushNamed(AddExerciseScreen.route);
          },
        ),
        title: Text(
          "ГРУДЬ , БИЦЕПС",
          style: AppStyles.jost12Bold,
        ),
      ),
      body: Column(
        children: [
          const Gap(12),
          ExerciseCard(
            isExpanded: true,
            image: Assets.images.exercise1.provider(),
            name: "ЖИМ ЛЕЖА",
            sets: 4,
          ),
          const Gap(16),
          ExerciseCard(
            image: Assets.images.exercise2.provider(),
            name: "РАЗВЕДЕНИЕ НОГ",
            sets: 4,
          ),
          const Spacer(),
          GLButton(
            color: AppColors.blue,
            text: "НАЧАТЬ ТРЕНИРОВКУ",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ExerciseCard extends StatefulWidget {
  const ExerciseCard({
    super.key,
    bool? isExpanded,
    required this.image,
    required this.name,
    required this.sets,
  }) : isExpanded = isExpanded ?? false;

  final bool isExpanded;
  final ImageProvider image;
  final String name;
  final int sets;

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  bool fade = false;
  bool weight = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            height: 66,
            decoration: widget.isExpanded
                ? BoxDecoration(
                    border: const Border(
                      bottom: BorderSide(color: AppColors.white),
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.black.withOpacity(0.3),
                  )
                : BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
            child: Row(
              children: [
                const Gap(8.5),
                Container(
                  width: 72,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(image: widget.image),
                  ),
                ),
                const Gap(12),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${widget.name}\n",
                        style: AppStyles.jost14Bold
                            .copyWith(color: AppColors.white),
                      ),
                      TextSpan(
                        text: "${widget.sets} подхода",
                        style:
                            AppStyles.jost12.copyWith(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GLIconButton(
                  icon: Assets.icons.training.burger.svg(),
                  onTap: () {},
                ),
                const Gap(32),
              ],
            ),
          ),
          if (widget.isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Gap(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: fade ? 0.3 : 1,
                        child: Column(
                          children: [
                            const Gap(17),
                            for (int i = 0; i < 4; i++) ...[
                              const Gap(16),
                              SizedBox(
                                height: 34,
                                child: Center(
                                  child: Text(
                                    (i + 1).toString(),
                                    style: AppStyles.jost12Bold,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      Opacity(
                        opacity: fade ? 0.3 : 1,
                        child: Column(
                          children: [
                            Text(
                              "ПОВТОРЕНИЯ",
                              style: AppStyles.jost12,
                            ),
                            for (int i = 0; i < 4; i++) ...[
                              const Gap(16),
                              ExerciseField(
                                onTap: () {},
                              ),
                            ],
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Opacity(
                            opacity: fade ? 0.3 : 1,
                            child: Text(
                              "ВЕС ( КГ )",
                              style: AppStyles.jost12,
                            ),
                          ),
                          for (int i = 0; i < 4; i++) ...[
                            const Gap(16),
                            if (i == 0)
                              Opacity(
                                opacity: fade && !weight ? 0.3 : 1,
                                child: ExerciseField(
                                  onTap: () {
                                    setState(() {
                                      fade = !fade;
                                      weight = true;
                                    });

                                    showKeyboardModalBottomSheet(
                                      context,
                                      () {
                                        setState(() {
                                          fade = false;
                                        });
                                      },
                                    );
                                  },
                                ),
                              )
                            else
                              Opacity(
                                opacity: fade ? 0.3 : 1,
                                child: ExerciseField(
                                  onTap: () {},
                                ),
                              ),
                          ],
                        ],
                      ),
                      Column(
                        children: [
                          Opacity(
                            opacity: fade ? 0.3 : 1,
                            child: Text(
                              "СЛОЖНОСТЬ",
                              style: AppStyles.jost12,
                            ),
                          ),
                          for (int i = 0; i < 4; i++) ...[
                            const Gap(16),
                            if (i == 0)
                              Opacity(
                                opacity: fade && weight ? 0.3 : 1,
                                child: ExerciseDifficulty(
                                  onTap: () {
                                    setState(() {
                                      fade = !fade;
                                      weight = false;
                                    });

                                    showDifficultyModalBottomSheet(
                                      context,
                                      () {
                                        setState(() {
                                          fade = false;
                                        });
                                      },
                                    );
                                  },
                                ),
                              )
                            else
                              Opacity(
                                opacity: fade ? 0.3 : 1,
                                child: ExerciseDifficulty(
                                  onTap: () {},
                                ),
                              ),
                          ],
                        ],
                      ),
                      Opacity(
                        opacity: fade ? 0.3 : 1,
                        child: Column(
                          children: [
                            const Gap(17),
                            for (int i = 0; i < 4; i++) ...[
                              const Gap(16),
                              SizedBox(
                                height: 34,
                                child: Center(
                                  child: Assets.icons.training.remove.svg(),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(32),
                  Opacity(
                    opacity: fade ? 0.3 : 1,
                    child: Row(
                      children: [
                        ActionButton(
                          icon: Assets.icons.add.svg(),
                          text: "Подход",
                          onTap: () {},
                        ),
                        const Spacer(),
                        GLIconButton(
                          icon: Assets.icons.training.delete.svg(),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  const Gap(34),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ExerciseField extends StatelessWidget {
  const ExerciseField({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 84,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.white),
        ),
        child: Center(
          child: TextFormField(
            enabled: false,
            initialValue: "12",
            style: AppStyles.jost12Bold,
            textAlign: TextAlign.center,
            decoration: const InputDecoration.collapsed(
              hintText: "",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class ExerciseDifficulty extends StatelessWidget {
  const ExerciseDifficulty({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 84,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.white),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.white.withOpacity(0.3),
                ),
              ),
              Container(
                width: 8,
                height: 16,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.white,
                ),
              ),
              Container(
                width: 8,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: AppColors.white.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
