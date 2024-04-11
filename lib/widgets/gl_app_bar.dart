import 'package:flutter/material.dart';

class GLAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GLAppBar({
    super.key,
    this.title,
    this.leading,
    this.action,
  });

  final Widget? title;
  final Widget? leading;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (leading != null)
              Align(
                alignment: Alignment.centerLeft,
                child: leading!,
              ),
            if (title != null) Center(child: title!),
            if (action != null)
              Align(
                alignment: Alignment.centerRight,
                child: action!,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(36);
}
