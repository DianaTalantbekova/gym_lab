import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources//app_styles.dart';

void showDifficultyModalBottomSheet(
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
