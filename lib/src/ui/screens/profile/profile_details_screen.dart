import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../../widgets/gl_text_form_field.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  static const String route = "profile-details";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        leading: GLIconButton(
          icon: Assets.icons.navigation.back.svg(),
          onTap: () {
            context.pop();
          },
        ),
        title: Text(
          Strings.of(context).profile,
          style: AppStyles.jost12Bold,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(28),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 47,
            child: Assets.images.avatarDetail.image(),
          ),
          const Gap(16),
          Text(
            Strings.of(context).personalInfo,
            style: AppStyles.jost12Bold,
          ),
          const Gap(17),
          GLTextFormField(
            initialValue: Strings.of(context).nameLC,
            onChanged: (value) {},
          ),
          const Gap(8),
          GLTextFormField(
            initialValue: Strings.of(context).surnameLC,
            onChanged: (value) {},
          ),
          const Gap(8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.black.withOpacity(0.3),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "28",
                    textAlign: TextAlign.center,
                    style: AppStyles.jost12,
                  ),
                ),
                Text(
                  "/",
                  textAlign: TextAlign.center,
                  style: AppStyles.jost12,
                ),
                Expanded(
                  child: Text(
                    Strings.of(context).november,
                    textAlign: TextAlign.center,
                    style: AppStyles.jost12,
                  ),
                ),
                Text(
                  "/",
                  textAlign: TextAlign.center,
                  style: AppStyles.jost12,
                ),
                Expanded(
                  child: Text(
                    "2023",
                    textAlign: TextAlign.center,
                    style: AppStyles.jost12,
                  ),
                ),
              ],
            ),
          ),
          const Gap(17),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.blue,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    Strings.of(context).man,
                    style: AppStyles.jost12,
                  ),
                ],
              ),
              const Gap(32),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.white),
                    ),
                  ),
                  const Gap(8),
                  Text(
                    Strings.of(context).woman,
                    style: AppStyles.jost12,
                  ),
                ],
              ),
            ],
          ),
          const Gap(37),
          Text(
            Strings.of(context).contacts,
            style: AppStyles.jost12Bold,
          ),
          const Gap(17),
          GLTextFormField(
            initialValue: "Email",
            onChanged: (value) {},
          ),
          const Spacer(),
          GLButton(
            color: AppColors.blue,
            text: Strings.of(context).save,
            onPressed: () {},
          ),
          const Gap(16),
          DeleteAccountButton(
            onTap: () {},
          ),
          const Gap(16),
          Text(
            Strings.of(context).warningBeforeAccountDeletion,
            textAlign: TextAlign.center,
            style: AppStyles.jost12
                .copyWith(color: AppColors.white.withOpacity(0.3)),
          ),
          const Gap(32),
        ],
      ),
    );
  }
}

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.black,
          maximumSize: const Size.fromHeight(44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            Strings.of(context).deleteAccount,
            style: AppStyles.jost12,
          ),
        ),
      ),
    );
  }
}
