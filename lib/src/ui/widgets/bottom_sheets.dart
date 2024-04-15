import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../infrastructure/gen/assets.gen.dart';
import '../../infrastructure/resources/app_colors.dart';
import '../../infrastructure/resources/app_styles.dart';
import 'buttons.dart';
import 'color_picker.dart';
import 'gl_text_form_field.dart';
import '../screens/training/widgets/keyboard_key.dart';

class BottomSheets {
  static void showCreateTrainingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      constraints: const BoxConstraints(maxHeight: 353),
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
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                children: [
                  const Gap(28),
                  Text(
                    "Название тренировки",
                    style: AppStyles.jost12,
                  ),
                  const Gap(16),
                  GLTextFormField(
                    onChanged: (value) {},
                  ),
                  const Gap(30),
                  Text(
                    "Цветовая маркировка",
                    style: AppStyles.jost12,
                  ),
                  const Gap(16),
                  ColorPicker(
                    onSelected: (value) {},
                  ),
                  const Spacer(),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 217),
                    child: GLButton(
                      color: AppColors.blue,
                      text: "СОХРАНИТЬ",
                      onPressed: () {},
                    ),
                  ),
                  const Gap(48),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showDifficultyModalBottomSheet(
      BuildContext context, VoidCallback onClose) {
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
                      opacity: 0.3,
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 58,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 114,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
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
                    Opacity(
                      opacity: 0.3,
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 172,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
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
      },
    ).then(
      (value) {
        onClose();
      },
    );
  }

  static void showEditTrainingModalBottomSheet(BuildContext context) {
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
                    "ГРУДЬ , БИЦЕПС",
                    style: AppStyles.jost12Bold,
                  ),
                  const Gap(32),
                  Text(
                    "Цветовая маркировка",
                    style: AppStyles.jost12,
                  ),
                  const Gap(16),
                  ColorPicker(
                    onSelected: (value) {},
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

  static void showKeyboardModalBottomSheet(BuildContext context, VoidCallback onClose) {
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
          decoration: const BoxDecoration(color: AppColors.modalBottomSheetColor),
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
                        text: "ГОТОВО",
                        style: AppStyles.jost14Bold,
                        recognizer: TapGestureRecognizer()..onTap = () {},
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
                      const Column(
                        children: [
                          KeyboardKey(text: "1"),
                          Gap(8),
                          KeyboardKey(text: "4"),
                          Gap(8),
                          KeyboardKey(text: "7"),
                        ],
                      ),
                       const Column(
                        children: [
                          KeyboardKey(text: "2"),
                          Gap(8),
                          KeyboardKey(text: "5"),
                          Gap(8),
                          KeyboardKey(text: "8"),
                          Gap(8),
                          KeyboardKey(text: "0"),
                        ],
                      ),
                      Column(
                        children: [
                          const KeyboardKey(text: "3"),
                          const Gap(8),
                          const KeyboardKey(text: "6"),
                          const Gap(8),
                          const KeyboardKey(text: "9"),
                          const Gap(8),
                          SizedBox(
                            width: 136,
                            height: 52,
                            child: Center(
                              child: Assets.icons.training.clear.svg(),
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
        onClose();
      },
    );
  }

}
