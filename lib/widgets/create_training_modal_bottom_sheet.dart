import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/widgets/color_picker.dart';
import 'package:gym_labb/widgets/gl_button.dart';
import 'package:gym_labb/widgets/gl_text_form_field.dart';

void showCreateTrainingModalBottomSheet(BuildContext context) {
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
