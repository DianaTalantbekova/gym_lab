import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../infrastructure/resources/app_colors.dart';
import '../../infrastructure/resources/app_styles.dart';

class GLTextFormField extends StatelessWidget {
  const GLTextFormField({
    super.key,
    this.initialValue,
    this.hintText,
    this.icon,
    required this.onChanged, this.validator,
  });

  final String? hintText;
  final Widget? icon;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 14,
              ),
              child: icon,
            )
          else
            const Gap(32),
          Expanded(
            child: TextFormField(
              validator: validator,
              initialValue: initialValue,
              onChanged: onChanged,
              cursorColor: AppColors.white,
              style: AppStyles.jost12,
              decoration: InputDecoration.collapsed(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppStyles.jost12
                    .copyWith(color: AppColors.white.withOpacity(0.3)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
