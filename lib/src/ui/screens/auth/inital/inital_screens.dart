import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';
import 'package:gym_labb/src/ui/screens/auth/login/registration_screen.dart';

import '../../../../infrastructure/resources/app_colors.dart';
import '../../../../infrastructure/resources/app_styles.dart';
import '../../../widgets/buttons.dart';
import '../../screens.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(flex: 2),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "GYM",
                        style: AppStyles.heinch64,
                      ),
                      TextSpan(
                        text: "LAB",
                        style:
                            AppStyles.heinch64.copyWith(color: AppColors.blue),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GLButton(
                  blur: true,
                  color: AppColors.blue,
                  text: Strings.of(context).login,
                  onPressed: () {
                    context.pushNamed(LoginScreen.route);
                  },
                ),
                const Gap(16),
                GLButton(
                  blur: true,
                  text: Strings.of(context).register,
                  onPressed: () {
                    context.pushNamed(RegistrationScreen.route);
                  },
                ),
                const Gap(73),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
