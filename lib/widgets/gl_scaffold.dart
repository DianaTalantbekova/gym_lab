import 'package:flutter/material.dart';
import 'package:gym_labb/resources/app_colors.dart';

class GLScaffold extends StatelessWidget {
  const GLScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomBar,
    this.horizontalPadding,
  });

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomBar;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.backgroundGradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 32),
          child: body,
        ),
        bottomNavigationBar: bottomBar,
      ),
    );
  }
}
