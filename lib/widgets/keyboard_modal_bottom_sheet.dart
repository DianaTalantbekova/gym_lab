import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';
import 'package:gym_labb/gen/assets.gen.dart';

void showKeyboardModalBottomSheet(BuildContext context, VoidCallback onClose) {
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

class KeyboardKey extends StatelessWidget {
  const KeyboardKey({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.jost20Bold,
        ),
      ),
    );
  }
}
