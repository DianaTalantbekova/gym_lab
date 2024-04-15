import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_labb/gen/assets.gen.dart';

import '../../infrastructure/resources/app_colors.dart';
import 'buttons.dart';

class GLBottomNavigationBar extends StatelessWidget {
  const GLBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bottomBarColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 48,
        vertical: 24,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GLBottomNavigationBarItem(
              icon: Assets.icons.navigation.training.svg(),
              isSelected: selectedIndex == 0,
              onTap: () {
                onSelected(0);
              },
            ),
            GLBottomNavigationBarItem(
              icon: Assets.icons.navigation.time.svg(),
              isSelected: selectedIndex == 1,
              onTap: () {
                onSelected(1);
              },
            ),
            GLBottomNavigationBarItem(
              icon: Assets.icons.navigation.repeat.svg(),
              isSelected: selectedIndex == 2,
              onTap: () {
                onSelected(2);
              },
            ),
            GLBottomNavigationBarItem(
              icon: Assets.icons.navigation.profile.svg(),
              isSelected: selectedIndex == 3,
              onTap: () {
                onSelected(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GLBottomNavigationBarItem extends StatelessWidget {
  const GLBottomNavigationBarItem({
    super.key,
    required this.icon,
    bool? isSelected,
    required this.onTap,
  }) : isSelected = isSelected ?? false;

  final Widget icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isSelected ? 1 : 0.3,
      child: GLIconButton(
        icon: icon,
        onTap: onTap,
      ),
    );
  }
}
