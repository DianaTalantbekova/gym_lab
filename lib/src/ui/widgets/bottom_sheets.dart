import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import 'package:gym_labb/src/ui/blocs/workout_bloc/workout_bloc.dart';
import 'package:gym_labb/src/ui/screens/training/bloc/training_bloc.dart';

import '../../infrastructure/resources/app_colors.dart';
import '../../infrastructure/resources/app_styles.dart';
import '../screens/training/widgets/custom_text_form_field.dart';
import 'buttons.dart';
import 'color_picker.dart';
import '../screens/training/widgets/keyboard_key.dart';

class BottomSheets {
  static void showCreateTrainingModalBottomSheet(BuildContext context) {
    final key = GlobalKey<FormState>();
    late String name;
    ValueNotifier<String> validateError = ValueNotifier<String>("");
    ValueNotifier<int> selectedColor = ValueNotifier<int>(4284783081);

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      constraints: const BoxConstraints(maxHeight: 353),
      builder: (context) {
        return BlocProvider(
          create: (context) => WorkoutBloc(),
          child: Builder(builder: (context) {
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
                color: AppColors.modalBottomSheetColor,
                border: Border.all(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: AppColors.blue,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 30,
                  sigmaY: 30,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Form(
                    key: key,
                    child: Column(
                      children: [
                        const Gap(28),
                        Text(
                          "Название тренировки",
                          style: AppStyles.jost12,
                        ),
                        const Gap(16),
                        CustomTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              validateError.value = 'Заполните это поле!';
                              return 'Заполните это поле!';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                          },
                        ),
                        const Gap(5),
                        ValueListenableBuilder(
                            valueListenable: validateError,
                            builder: (BuildContext context, String value,
                                Widget? child) {
                              if (value.isNotEmpty) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    value,
                                    style: AppStyles.jost12.copyWith(
                                      color: AppColors.red,
                                    ),
                                  ),
                                );
                              }
                              return const SizedBox();
                            }),
                        const Gap(25),
                        Text(
                          "Цветовая маркировка",
                          style: AppStyles.jost12,
                        ),
                        const Gap(16),
                        ValueListenableBuilder(
                          valueListenable: selectedColor,
                          builder:
                              (BuildContext context, int value, Widget? child) {
                            return ColorPicker(
                              onSelected: (value) {
                                selectedColor.value = value;
                              },
                              selectedColor: selectedColor.value,
                            );
                          },
                        ),
                        const Spacer(),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 217),
                          child: BlocConsumer<WorkoutBloc, WorkoutState>(
                            builder: (context, state) {
                              return GLButton(
                                color: AppColors.blue,
                                text: "СОХРАНИТЬ",
                                loading: state.isLoading,
                                onPressed: () {
                                  if (key.currentState?.validate() == true) {
                                    context.read<WorkoutBloc>().add(
                                          WorkoutEvent.create(
                                            name: name,
                                            color: selectedColor.value,
                                          ),
                                        );
                                  }
                                },
                              );
                            },
                            listener:
                                (BuildContext context, WorkoutState state) {
                              if (state.name != null) {
                                context.read<TrainingBloc>().add(
                                      TrainingEvent.addNewTraining(
                                        newTraining: TrainingEntity(
                                          name: state.name!,
                                          color: state.color!,
                                          id: 1,
                                        ),
                                      ),
                                    );
                                context.pop();
                              }
                            },
                          ),
                        ),
                        const Gap(48),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  static void showDifficultyModalBottomSheet({
    required BuildContext context,
    required VoidCallback onClose,
    required TextEditingController controller,
    required ValueChanged<String> onChanged,
  }) {
    // TODO(littlelarge): add localization
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      constraints: const BoxConstraints(maxHeight: 361),
      builder: (context) {
        return DifficultyModalBottomSheet(
          controller: controller,
          onChanged: onChanged,
        );
      },
    ).then(
      (value) {
        onClose();
      },
    );
  }

  static void showEditTrainingModalBottomSheet(
    BuildContext context,
    TrainingEntity item,
  ) {
    ValueNotifier<int> selectedColor = ValueNotifier<int>(item.color);

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      constraints: const BoxConstraints(maxHeight: 296),
      builder: (context) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            color: AppColors.modalBottomSheetColor,
            border: Border.all(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: AppColors.blue,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 30,
              sigmaY: 30,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 2,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Text(
                    item.name,
                    style: AppStyles.jost12Bold,
                  ),
                  const Gap(32),
                  Text(
                    "Цветовая маркировка",
                    style: AppStyles.jost12,
                  ),
                  const Gap(16),
                  ValueListenableBuilder(
                    valueListenable: selectedColor,
                    builder: (BuildContext context, int value, Widget? child) {
                      return ColorPicker(
                        onSelected: (value) {
                          selectedColor.value = value;
                        },
                        selectedColor: selectedColor.value,
                      );
                    },
                  ),
                  const Gap(32),
                  ActionButton(
                    icon: Assets.icons.training.edit.svg(),
                    text: "Переиминовать",
                    onTap: () {},
                  ),
                  const Gap(20),
                  ActionButton(
                    icon: Assets.icons.training.delete.svg(),
                    text: "Удалить",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showKeyboardModalBottomSheet({
    required BuildContext context,
    required VoidCallback onClose,
    required TextEditingController controller,
    required ValueChanged<String> onChanged,
  }) {
    void addValue(String value) {
      if (controller.text.length < 6) {
        if (value != '0' && controller.text.isEmpty ||
            controller.text.isNotEmpty) {
          controller.text += value;

          onChanged(controller.text);
        }
      }
    }

    void removeValue() {
      if (controller.text.isNotEmpty) {
        controller.text =
            controller.text.substring(0, controller.text.length - 1);

        if (controller.text.isEmpty) {
          controller.text = '0';
        }

        onChanged(controller.text);
      }
    }

    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      constraints: const BoxConstraints(maxHeight: 361),
      builder: (context) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration:
              const BoxDecoration(color: AppColors.modalBottomSheetColor),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 30,
              sigmaY: 30,
            ),
            child: Column(
              children: [
                const Gap(16),
                Row(
                  children: [
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        // TODO(littlelarge): add localization
                        text: "ГОТОВО",
                        style: AppStyles.jost14Bold,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pop();
                          },
                      ),
                    ),
                    const Gap(16),
                  ],
                ),
                const Gap(22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          KeyboardKey(
                            text: "1",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "4",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "7",
                            onTap: addValue,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          KeyboardKey(
                            text: "2",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "5",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "8",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "0",
                            onTap: addValue,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          KeyboardKey(
                            text: "3",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "6",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          KeyboardKey(
                            text: "9",
                            onTap: addValue,
                          ),
                          const Gap(8),
                          GestureDetector(
                            onTap: () => removeValue(),
                            child: SizedBox(
                              width: 136,
                              height: 52,
                              child: Center(
                                child: Assets.icons.training.clear.svg(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ).then(
      (value) {
        if (controller.text.isEmpty || controller.text == '0') {
          controller.text = '1';

          onChanged(controller.text);
        }

        onClose();
      },
    );
  }
}

class DifficultyModalBottomSheet extends StatefulWidget {
  const DifficultyModalBottomSheet(
      {super.key, required this.controller, required this.onChanged});

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  State<DifficultyModalBottomSheet> createState() =>
      _DifficultyModalBottomSheetState();
}

class _DifficultyModalBottomSheetState
    extends State<DifficultyModalBottomSheet> {
  void change(ApproachComplexity complexity) {
    setState(() {
      widget.controller.text = complexity.toString();
      widget.onChanged(widget.controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: AppColors.modalBottomSheetColor),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30,
          sigmaY: 30,
        ),
        child: Column(
          children: [
            const Gap(16),
            RichText(
              text: TextSpan(
                text: "ВЫБЕРИТЕ СЛОЖНОСТЬ",
                style: AppStyles.jost14Bold,
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ),
            const Gap(32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Opacity(
                  opacity: widget.controller.text ==
                          ApproachComplexity.easy.toString()
                      ? 1
                      : 0.3,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => change(ApproachComplexity.easy),
                        child: Container(
                          width: 40,
                          height: 58,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const Gap(32),
                      Text(
                        "Легко",
                        style: AppStyles.jost12,
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: widget.controller.text ==
                          ApproachComplexity.medium.toString()
                      ? 1
                      : 0.3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => change(ApproachComplexity.medium),
                          child: Container(
                            width: 40,
                            height: 114,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        const Gap(32),
                        Text(
                          "Нормально",
                          style: AppStyles.jost12,
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: widget.controller.text ==
                          ApproachComplexity.hard.toString()
                      ? 1
                      : 0.3,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => change(ApproachComplexity.hard),
                        child: Container(
                          width: 40,
                          height: 172,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const Gap(32),
                      Text(
                        "Сложно",
                        style: AppStyles.jost12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
