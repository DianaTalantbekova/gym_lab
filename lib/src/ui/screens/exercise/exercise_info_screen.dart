import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';

class ExerciseInfoScreen extends StatelessWidget {
  const ExerciseInfoScreen({super.key});

  static const String route = "exercise-info";

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
          Strings.of(context).trainingDetails,
          style: AppStyles.jost12Bold,
        ),
      ),
      body: Column(
        children: [
          const Gap(28),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.white),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      image: DecorationImage(
                        image: Assets.images.exercise1Details.provider(),
                      ),
                      borderRadius: BorderRadius.circular(8),
                      border: const Border(
                        bottom: BorderSide(color: AppColors.white),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.of(context).benchPress,
                          style: AppStyles.jost14Bold,
                        ),
                        const Gap(16),
                        SizedBox(
                          height: 51,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Text(
                                Strings.of(context).benchPressDescr,
                                maxLines: 3,
                                style: AppStyles.jost12,
                              ),
                              Positioned(
                                bottom: -3,
                                right: 0,
                                child: Row(
                                  children: [
                                    Text(
                                      Strings.of(context).readMore,
                                      style: AppStyles.jost12.copyWith(
                                          color:
                                              AppColors.white.withOpacity(0.3)),
                                    ),
                                    const Gap(4),
                                    GLIconButton(
                                      icon: Assets.icons.training.down.svg(),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${Strings.of(context).equipment} : ",
                                style: AppStyles.jost14Bold,
                              ),
                              TextSpan(
                                text: Strings.of(context).barbell,
                                style: AppStyles.jost12,
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${Strings.of(context).muscleGroup}\n",
                                style: AppStyles.jost14Bold,
                              ),
                              TextSpan(
                                text:
                                    "${Strings.of(context).pectoralMusclesPrimary}\n",
                                style: AppStyles.jost12,
                              ),
                              TextSpan(
                                text: Strings.of(context)
                                    .tricepsShouldersSecondary,
                                style: AppStyles.jost12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Flexible(
                    child: Assets.images.muscles.image(),
                  ),
                  const Gap(23),
                ],
              ),
            ),
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
