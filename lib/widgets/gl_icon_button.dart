import 'package:flutter/material.dart';

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
