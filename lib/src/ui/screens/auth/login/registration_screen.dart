import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';

import '../../../../infrastructure/l10n/strings.dart';
import '../../../../infrastructure/resources/app_colors.dart';
import '../../../../infrastructure/resources/app_styles.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/gl_app_bar.dart';
import '../../../widgets/gl_text_form_field.dart';
import '../../screens.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  static const String route = "registration";

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 0.4,
          image: Assets.images.background.provider(),
        ),
        color: Colors.black,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: GLAppBar(
            leading: GLIconButton(
              icon: Assets.icons.navigation.back.svg(),
              onTap: () {
                context.pop();
              },
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Text(
                    Strings.of(context).register,
                    textAlign: TextAlign.center,
                    style: AppStyles.jost14Bold,
                  ),
                  const Gap(32),
                  GLTextFormField(
                    hintText: Strings.of(context).email,
                    onChanged: (value) {},
                  ),
                  const Gap(16),
                  GLTextFormField(
                    hintText: Strings.of(context).password,
                    onChanged: (value) {},
                  ),
                  const Gap(16),
                  GLTextFormField(
                    hintText: Strings.of(context).password,
                    onChanged: (value) {},
                  ),
                  const Gap(32),
                  GLButton(
                    color: AppColors.blue,
                    text: Strings.of(context).register,
                    onPressed: () {
                      context.goNamed(TrainingScreen.route);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
