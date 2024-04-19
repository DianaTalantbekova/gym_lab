import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';
import 'package:gym_labb/src/ui/screens/training/bloc/training_bloc.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/bottom_sheets.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../add_exercise/add_exercise_screen.dart';

late int trainingIndex;

class TrainingDetailsScreen extends StatefulWidget {
  TrainingDetailsScreen({super.key, required this.trainingId}) {
    trainingIndex = trainingId;
  }

  static const String route = "training-details";

  final int trainingId;

  @override
  State<TrainingDetailsScreen> createState() => _TrainingDetailsScreenState();
}

class _TrainingDetailsScreenState extends State<TrainingDetailsScreen> {
  List<ExerciseEntity> get exercises =>
      context.read<TrainingBloc>().state.trainings[trainingIndex].exercises ??
      <ExerciseEntity>[];

  late final isExpandedList;

  @override
  void initState() {
    isExpandedList = List.generate(exercises.length, (index) => false);
    super.initState();
  }

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
          BlocBuilder<TrainingBloc, TrainingState>(
            buildWhen: (previous, current) =>
                previous.trainings[trainingIndex].exercises !=
                current.trainings[trainingIndex].exercises,
            builder: (context, state) {
              return Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ExerciseCard(
                    onTap: () {
                      setState(() {
                        isExpandedList[index] = !isExpandedList[index];
                      });
                    },
                    isExpanded: isExpandedList[index],
                    image: Assets.images.exercise1.provider(),
                    name: exercises[index].name,
                    sets: exercises[index].approaches!.length,
                    exerciseIndex: index,
                  ),
                  separatorBuilder: (context, index) => const Gap(16),
                  itemCount: exercises.length,
                ),
              );
            },
          ),
          const Gap(12),
          GLButton(
            color: AppColors.blue,
            text: Strings.of(context).startTraining,
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
    required this.exerciseIndex,
    required this.onTap,
  }) : isExpanded = isExpanded ?? false;

  final bool isExpanded;
  final ImageProvider image;
  final String name;
  final int sets;
  final VoidCallback onTap;

  final int exerciseIndex;

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  bool fade = false;

  bool reps = false;
  bool weight = false;
  bool difficulty = false;

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.onTap,
            child: Container(
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
                          text:
                              "${widget.sets} ${Strings.of(context).approaches}",
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
          ),
          if (widget.isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Gap(32),
                  BlocBuilder<TrainingBloc, TrainingState>(
                    buildWhen: (previous, current) =>
                        previous.trainings[trainingIndex]
                            .exercises![widget.exerciseIndex].approaches !=
                        current.trainings[trainingIndex]
                            .exercises![widget.exerciseIndex].approaches,
                    builder: (context, state) {
                      final approaches = state.trainings[trainingIndex]
                          .exercises![widget.exerciseIndex].approaches;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: fade ? 0.3 : 1,
                            child: Column(
                              children: [
                                const Gap(17),
                                for (int i = 0; i < approaches!.length; i++) ...[
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
                          Column(
                            children: [
                              Opacity(
                                opacity: fade ? 0.3 : 1,
                                child: Text(
                                  Strings.of(context).repeats,
                                  style: AppStyles.jost12,
                                ),
                              ),
                              for (int i = 0; i < approaches.length; i++) ...[
                                const Gap(16),
                                Opacity(
                                  opacity: selectedIndex == i
                                      ? fade && !reps
                                          ? 0.3
                                          : 1
                                      : fade
                                          ? 0.3
                                          : 1,
                                  child: ExerciseField(
                                    onTap: () {
                                      setState(() {
                                        fade = !fade;
                                        selectedIndex = i;
                                        _select(ApproachDetails.reps);
                                      });

                                      BottomSheets.showKeyboardModalBottomSheet(
                                        context,
                                        _unselectAll,
                                      );
                                    },
                                    value: approaches[i].repeat,
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
                                  Strings.of(context).weightKG,
                                  style: AppStyles.jost12,
                                ),
                              ),
                              for (int i = 0; i < approaches.length; i++) ...[
                                const Gap(16),
                                Opacity(
                                  opacity: selectedIndex == i
                                      ? fade && !weight
                                          ? 0.3
                                          : 1
                                      : fade
                                          ? 0.3
                                          : 1,
                                  child: ExerciseField(
                                    onTap: () {
                                      setState(() {
                                        fade = !fade;
                                        selectedIndex = i;
                                        _select(ApproachDetails.weight);
                                      });

                                      BottomSheets.showKeyboardModalBottomSheet(
                                        context,
                                        _unselectAll,
                                      );
                                    },
                                    value: approaches[i].weight,
                                  ),
                                )
                              ],
                            ],
                          ),
                          Column(
                            children: [
                              Opacity(
                                opacity: fade ? 0.3 : 1,
                                child: Text(
                                  Strings.of(context).difficulty,
                                  style: AppStyles.jost12,
                                ),
                              ),
                              for (int i = 0; i < approaches.length; i++) ...[
                                const Gap(16),
                                Opacity(
                                  opacity: selectedIndex == i
                                      ? fade && !difficulty
                                          ? 0.3
                                          : 1
                                      : fade
                                          ? 0.3
                                          : 1,
                                  child: ExerciseDifficulty(
                                    onTap: () {
                                      setState(() {
                                        fade = !fade;
                                        selectedIndex = i;
                                        _select(ApproachDetails.difficulty);
                                      });

                                      BottomSheets
                                          .showDifficultyModalBottomSheet(
                                        context,
                                        _unselectAll,
                                      );
                                    },
                                    complexity: approaches[i].complexity,
                                  ),
                                )
                              ],
                            ],
                          ),
                          Opacity(
                            opacity: fade ? 0.3 : 1,
                            child: Column(
                              children: [
                                const Gap(17),
                                for (int i = 0; i < approaches.length; i++) ...[
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
                      );
                    },
                  ),
                  const Gap(32),
                  Opacity(
                    opacity: fade ? 0.3 : 1,
                    child: Row(
                      children: [
                        ActionButton(
                          icon: Assets.icons.add.svg(),
                          text: Strings.of(context).approach,
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

  void _select(ApproachDetails approachDetails) {
    switch (approachDetails) {
      case ApproachDetails.reps:
        reps = true;
        weight = false;
        difficulty = false;
      case ApproachDetails.weight:
        reps = false;
        weight = true;
        difficulty = false;
      case ApproachDetails.difficulty:
        reps = false;
        weight = false;
        difficulty = true;
      case ApproachDetails.nothing:
        reps = false;
        weight = false;
        difficulty = false;
    }
  }

  void _unselectAll() {
    setState(() {
      _select(ApproachDetails.nothing);
      selectedIndex = -1;
      fade = false;
    });
  }
}

class ExerciseField extends StatelessWidget {
  const ExerciseField({
    super.key,
    this.onTap,
    required this.value,
  });

  final VoidCallback? onTap;
  final int value;

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
            // TODO(littlelarge): add validation for empty
            enabled: false,
            initialValue: value.toString(),
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
  ExerciseDifficulty({
    super.key,
    this.onTap,
    required this.complexity,
  });

  final VoidCallback? onTap;
  final ExerciseComplexity complexity;

  final Color _selectedColor = AppColors.white.withOpacity(1);
  final Color _unSelectedColor = AppColors.white.withOpacity(0.3);

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
                  color: complexity == ExerciseComplexity.easy
                      ? _selectedColor
                      : _unSelectedColor,
                ),
              ),
              Container(
                width: 8,
                height: 16,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: complexity == ExerciseComplexity.medium
                      ? _selectedColor
                      : _unSelectedColor,
                ),
              ),
              Container(
                width: 8,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: complexity == ExerciseComplexity.hard
                      ? _selectedColor
                      : _unSelectedColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ApproachDetails { reps, weight, difficulty, nothing }
