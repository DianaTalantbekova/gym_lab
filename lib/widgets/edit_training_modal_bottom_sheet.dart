import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/widgets/action_button.dart';
import 'package:gym_labb/widgets/color_picker.dart';

void showEditTrainingModalBottomSheet(BuildContext context) {
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
