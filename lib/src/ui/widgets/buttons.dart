import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../infrastructure/resources/app_colors.dart';
import '../../infrastructure/resources/app_styles.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final Widget icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          const Gap(12),
          Text(
            text,
            style: AppStyles.jost12,
          ),
        ],
      ),
    );
  }
}

class GLButton extends StatelessWidget {
  const GLButton({
    super.key,
    bool? blur,
    this.color,
    required this.text,
    this.icon,
    required this.onPressed,
  }) : blur = blur ?? false;

  final bool blur;
  final Color? color;
  final String text;
  final Widget? icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final child = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black.withOpacity(0.3),
        maximumSize: const Size.fromHeight(44),
        side: BorderSide(
          color: color ?? AppColors.white,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Stack(
        children: [
          if (icon != null)
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: icon!,
              ),
            ),
          Center(
            child: Text(
              text,
              style: AppStyles.jost14Bold
                  .copyWith(color: color ?? AppColors.white),
            ),
          ),
        ],
      ),
    );

    if (blur) {
      return ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: child,
        ),
      );
    }

    return child;
  }
}

class GLIconButton extends StatelessWidget {
  const GLIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox.fromSize(
        size: const Size.square(24),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}

