import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_scaffold.dart';
import '../screens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String route = "profile";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Gap(12),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 24,
                  child: Assets.images.avatar.image(),
                ),
                const Gap(16),
                Text(
                  "${Strings.of(context).name}\n${Strings.of(context).surname}",
                  style: AppStyles.jost12Bold,
                ),
                const Spacer(),
                GLIconButton(
                  icon: Assets.icons.navigation.more.svg(),
                  onTap: () {
                    context.pushNamed(ProfileDetailsScreen.route);
                  },
                ),
              ],
            ),
            const Gap(40),
            Container(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.blue,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 21,
                horizontal: 25,
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "GYM",
                          style: AppStyles.jost12Bold,
                        ),
                        TextSpan(
                          text: "LAB ",
                          style: AppStyles.jost12Bold
                              .copyWith(color: AppColors.blue),
                        ),
                      ],
                    ),
                  ),
                  const Gap(4),
                  Container(
                    width: 44,
                    height: 19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.5),
                      color: AppColors.blue,
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: AppStyles.jost12Bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ShowDetailsButton(
                    onTap: () {
                      context.pushNamed(PremiumScreen.route);
                    },
                  ),
                ],
              ),
            ),
            const Gap(24),
            Row(
              children: [
                Text(
                  Strings.of(context).units,
                  style: AppStyles.jost14Bold,
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      Strings.of(context).kgUC,
                      style:
                          AppStyles.jost12Bold.copyWith(color: AppColors.blue),
                    ),
                    const Gap(20),
                    Assets.icons.profile.down.svg(),
                  ],
                ),
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Text(
                  Strings.of(context).measurements,
                  style: AppStyles.jost14Bold,
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      Strings.of(context).cm,
                      style:
                          AppStyles.jost12Bold.copyWith(color: AppColors.blue),
                    ),
                    const Gap(18),
                    Assets.icons.profile.down.svg(),
                  ],
                ),
              ],
            ),
            const Gap(30),
            Row(
              children: [
                Text(
                  Strings.of(context).language,
                  style: AppStyles.jost14Bold,
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      Strings.of(context).rus,
                      style:
                          AppStyles.jost12Bold.copyWith(color: AppColors.blue),
                    ),
                    const Gap(16),
                    Assets.icons.profile.down.svg(),
                  ],
                ),
              ],
            ),
            const Gap(23),
            Row(
              children: [
                Text(
                  Strings.of(context).appleHealth,
                  style: AppStyles.jost14Bold,
                ),
                const Spacer(),
                Switch.adaptive(
                  activeColor: AppColors.blue,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            const Spacer(),
            ActionButton(
              icon: Assets.icons.profile.message.svg(),
              text: Strings.of(context).writeToTheDevelopers,
              onTap: () {},
            ),
            const Gap(32),
            GLButton(
              text: Strings.of(context).logOutFromAccount,
              onPressed: () {
                context.go("/");
              },
            ),
            const Gap(16),
            Text(
              Strings.of(context).confirmation,
              style: AppStyles.jost12,
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Opacity(
                    opacity: 0.3,
                    child: Text(
                      Strings.of(context).privacyPolicy,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.jost12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    Strings.of(context).and,
                    style: AppStyles.jost12,
                  ),
                ),
                Flexible(
                  child: Opacity(
                    opacity: 0.3,
                    child: Text(
                      Strings.of(context).termsOfUse,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.jost12,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}

class ShowDetailsButton extends StatelessWidget {
  const ShowDetailsButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.black.withOpacity(0.3),
          side: const BorderSide(
            color: AppColors.blue,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            Strings.of(context).moreDetails,
            style: AppStyles.jost12Bold.copyWith(color: AppColors.blue),
          ),
        ),
      ),
    );
  }
}
