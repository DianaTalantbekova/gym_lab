import 'package:flutter/material.dart';
import 'package:gym_labb/gen/assets.gen.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    required this.onSelected,
  });

  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColorPickerItem(
          colorCode: 0xFF6499E9,
          isSelected: true,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFFAECEEB,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFF8282B3,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFFE7EBB9,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFFDC8686,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFFC683D7,
          onTap: onSelected,
        ),
        ColorPickerItem(
          colorCode: 0xFFEA906C,
          onTap: onSelected,
        ),
      ],
    );
  }
}

class ColorPickerItem extends StatelessWidget {
  const ColorPickerItem({
    super.key,
    required this.colorCode,
    bool? isSelected,
    required this.onTap,
  }) : isSelected = isSelected ?? false;

  final int colorCode;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(colorCode);
      },
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Color(colorCode),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: isSelected
            ? Assets.icons.training.selected.svg()
            : const SizedBox.shrink(),
      ),
    );
  }
}
