import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/di.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/ui/blocs/auth/login_cubit/login_cubit.dart';

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
    return BlocProvider(
      create: (context) => getIt.get<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.success) {
            context.goNamed(TrainingScreen.route);
          }
        },
        child: DecoratedBox(
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
                        Strings.of(context).loginToAccount,
                        textAlign: TextAlign.center,
                        style: AppStyles.jost14Bold,
                      ),
                      const Gap(32),
                      GLTextFormField(
                        hintText: Strings.of(context).email,
                        onChanged: (value) {
                          context.read<LoginCubit>().emailChanged(value);
                        },
                      ),
                      const Gap(16),
                      GLTextFormField(
                        hintText: Strings.of(context).password,
                        onChanged: (value) {
                          context.read<LoginCubit>().passwordChanged(value);
                        },
                      ),
                      const Gap(32),
                      GLButton(
                        color: AppColors.blue,
                        text: Strings.of(context).login,
                        onPressed: () {
                          // context.goNamed(TrainingScreen.route);

                          context.read<LoginCubit>().logInWithCredentials();
                        },
                      ),
                      const Gap(16),
                      Text(
                        Strings.of(context).or,
                        textAlign: TextAlign.center,
                        style: AppStyles.jost12Bold,
                      ),
                      const Gap(16),
                      GLButton(
                        text: Strings.of(context).signInWithAppleID,
                        icon: SvgPicture.asset(
                          'assets/icons/login/apple.svg',
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        onPressed: () {},
                      ),
                      const Gap(16),
                      GLButton(
                        text: Strings.of(context).signInWithGoogle,
                        icon: Assets.icons.login.google.svg(),
                        onPressed: () {},
                      ),
                      const Gap(16),
                      GLButton(
                        text: Strings.of(context).signInWithEmail,
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
        ),
      ),
    );
  }
}
