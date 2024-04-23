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

late final int trainingIndex;

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

  late final List<bool> _isExpandedList;

  @override
  void initState() {
    context
        .read<TrainingBloc>()
        .add(const TrainingEvent.trainingDetailsOpened());

    _isExpandedList = List.generate(exercises.length, (index) => false);
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
            context.pushNamed(
              AddExerciseScreen.route,
              extra: widget.trainingId,
            );
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
            builder: (context, state) {
              if (state.exercisesLoading) {
                return const Expanded(
                    child: Center(child: CircularProgressIndicator()));
              } else {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ExerciseCard(
                      onTap: () {
                        setState(() {
                          _isExpandedList[index] = !_isExpandedList[index];
                        });
                      },
                      isExpanded: _isExpandedList[index],
                      image: Assets.images.exercise1.provider(),
                      name: exercises[index].name,
                      sets: exercises[index].approaches!.length,
                      exerciseIndex: index,
                    ),
                    separatorBuilder: (context, index) => const Gap(16),
                    itemCount: exercises.length,
                  ),
                );
              }
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

  late List<TextEditingController> repsControllers;
  late List<TextEditingController> weightControllers;
  late List<TextEditingController> complexityControllers;

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
                          .exercises![widget.exerciseIndex].approaches!;

                      repsControllers = List.generate(
                          approaches.length,
                          (index) => TextEditingController(
                              text: approaches[index].repeat.toString()));
                      weightControllers = List.generate(
                          approaches.length,
                          (index) => TextEditingController(
                              text: approaches[index].weight.toString()));
                      complexityControllers = List.generate(
                          approaches.length,
                          (index) => TextEditingController(
                              text: approaches[index].complexity.toString()));

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                          context: context,
                                          onClose: _unselectAll,
                                          controller: repsControllers[i],
                                          onChanged: (value) {
                                            setState(() {
                                              repsControllers[i].text = value;
                                            });

                                            final int intValue;

                                            if (value.isNotEmpty) {
                                              intValue = int.parse(value);
                                            } else {
                                              intValue = 0;
                                            }

                                            context.read<TrainingBloc>().add(
                                                ApproachDetailsChanged(
                                                    trainingId: trainingIndex,
                                                    exerciseId:
                                                        widget.exerciseIndex,
                                                    approachId: i,
                                                    reps: intValue));
                                          });
                                    },
                                    controller: repsControllers[i],
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
                                          context: context,
                                          onClose: _unselectAll,
                                          controller: weightControllers[i],
                                          onChanged: (value) {
                                            setState(() {
                                              weightControllers[i].text = value;
                                            });

                                            final int intValue;

                                            if (value.isNotEmpty) {
                                              intValue = int.parse(value);
                                            } else {
                                              intValue = 0;
                                            }

                                            context.read<TrainingBloc>().add(
                                                ApproachDetailsChanged(
                                                    trainingId: trainingIndex,
                                                    exerciseId:
                                                        widget.exerciseIndex,
                                                    approachId: i,
                                                    weight: intValue));
                                          });
                                    },
                                    controller: weightControllers[i],
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
                                              context: context,
                                              onClose: _unselectAll,
                                              controller:
                                                  complexityControllers[i],
                                              onChanged: (value) {
                                                setState(() {
                                                  complexityControllers[i]
                                                      .text = value;
                                                });

                                                final complexity = value
                                                    .toApproachComplexity();

                                                context
                                                    .read<TrainingBloc>()
                                                    .add(ApproachDetailsChanged(
                                                        trainingId:
                                                            trainingIndex,
                                                        exerciseId: widget
                                                            .exerciseIndex,
                                                        approachId: i,
                                                        exerciseComplexity:
                                                            complexity));
                                              });
                                    },
                                    controller: complexityControllers[i],
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
                                  GestureDetector(
                                    onTap: () {
                                      context.read<TrainingBloc>().add(
                                          TrainingEvent.approachDeleted(
                                              trainingId: trainingIndex,
                                              exerciseId: widget.exerciseIndex,
                                              approachId: i));
                                    },
                                    child: SizedBox(
                                      height: 34,
                                      child: Center(
                                        child:
                                            Assets.icons.training.remove.svg(),
                                      ),
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
                          onTap: () {
                            context.read<TrainingBloc>().add(
                                TrainingEvent.approachAdded(
                                    trainingId: trainingIndex,
                                    exerciseId: widget.exerciseIndex));
                          },
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

class ExerciseField extends StatefulWidget {
  const ExerciseField({
    super.key,
    required this.onTap,
    required this.controller,
  });

  final VoidCallback onTap;
  final TextEditingController controller;

  @override
  State<ExerciseField> createState() => _ExerciseFieldState();
}

class _ExerciseFieldState extends State<ExerciseField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 84,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.white),
        ),
        child: Center(
          child: TextFormField(
            controller: widget.controller,
            enabled: false,
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
    required this.controller,
  });

  final VoidCallback? onTap;
  final TextEditingController controller;

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
                  color: controller.text == ApproachComplexity.easy.toString()
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
                  color: controller.text == ApproachComplexity.medium.toString()
                      ? _selectedColor
                      : _unSelectedColor,
                ),
              ),
              Container(
                width: 8,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: controller.text == ApproachComplexity.hard.toString()
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

extension ToApproachComplexity on String {
  ApproachComplexity toApproachComplexity() {
    switch (this) {
      case 'ApproachComplexity.easy':
        return ApproachComplexity.easy;
      case 'ApproachComplexity.medium':
        return ApproachComplexity.medium;
      case 'ApproachComplexity.hard':
        return ApproachComplexity.hard;
      default:
        return ApproachComplexity.easy;
    }
  }
}
