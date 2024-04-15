import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String route = "login";

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
        filter: ImageFilter.blur(
          sigmaX: 30,
          sigmaY: 30,
        ),
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
            action: RichText(
              text: TextSpan(
                text: Strings.of(context).forgotPassword,
                style: AppStyles.jost12Bold,
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 2),
                  Text(
                    "ВХОД В АККАУНТ",
                    textAlign: TextAlign.center,
                    style: AppStyles.jost14Bold,
                  ),
                  const Gap(32),
                  GLTextFormField(
                    hintText: "E-mail",
                    onChanged: (value) {},
                  ),
                  const Gap(16),
                  GLTextFormField(
                    hintText: "Пароль",
                    onChanged: (value) {},
                  ),
                  const Gap(32),
                  GLButton(
                    color: AppColors.blue,
                    text: "ВОЙТИ",
                    onPressed: () {
                      context.goNamed(TrainingScreen.route);
                    },
                  ),
                  const Gap(16),
                  Text(
                    "ИЛИ",
                    textAlign: TextAlign.center,
                    style: AppStyles.jost12Bold,
                  ),
                  const Gap(16),
                  GLButton(
                    text: "ВОЙТИ ЧЕРЕЗ Apple ID",
                    icon: SvgPicture.asset('assets/icons/login/apple.svg', color: Colors.white,),
                    onPressed: () {},
                  ),
                  const Gap(16),
                  GLButton(
                    text: "ВОЙТИ ЧЕРЕЗ Google",
                    icon: Assets.icons.login.google.svg(),
                    onPressed: () {},
                  ),
                  const Gap(16),
                  GLButton(
                    text: "ВОЙТИ ЧЕРЕЗ E-mail",
                    icon: Assets.icons.login.email.svg(),
                    onPressed: () {},
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
