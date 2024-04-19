import 'package:flutter/material.dart';
import 'package:gym_labb/gen/assets.gen.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    super.key,
    required this.onSelected,
    required this.selectedColor,
  });

  final ValueChanged<int> onSelected;
  final int selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColorPickerItem(
          colorCode: 0xFF6499E9,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFFAECEEB,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFF8282B3,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFFE7EBB9,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFFDC8686,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFFC683D7,
          onTap: onSelected,
          selectedColor: selectedColor,
        ),
        ColorPickerItem(
          colorCode: 0xFFEA906C,
          onTap: onSelected,
          selectedColor: selectedColor,
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
    required this.selectedColor,
  });

  final int colorCode;
  final int selectedColor;
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
        child: selectedColor == colorCode
            ? Assets.icons.training.selected.svg()
            : const SizedBox.shrink(),
      ),
    );
  }
}
