import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/resources/app_styles.dart';

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
        fit: StackFit.expand,
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
