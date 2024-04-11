import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/resources//app_styles.dart';

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
