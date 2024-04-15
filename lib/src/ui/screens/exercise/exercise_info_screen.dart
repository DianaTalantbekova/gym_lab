import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../infrastructure/gen/assets.gen.dart';
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
          "ДЕТАЛИ ТРЕНИРОВКИ",
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
                          "ЖИМ ЛЕЖА",
                          style: AppStyles.jost14Bold,
                        ),
                        const Gap(16),
                        SizedBox(
                          height: 51,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Text(
                                "Выполняющий упражнение ложится на скамью, опускает гриф штанги до касания с грудью и поднимает до полного вып...",
                                maxLines: 3,
                                style: AppStyles.jost12,
                              ),
                              Positioned(
                                bottom: -3,
                                right: 0,
                                child: Row(
                                  children: [
                                    Text(
                                      "Читать далее",
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
                                text: "СНАРЯЖЕНИЕ : ",
                                style: AppStyles.jost14Bold,
                              ),
                              TextSpan(
                                text: "Гриф",
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
                                text: "ГРУППА МЫШЦ :\n",
                                style: AppStyles.jost14Bold,
                              ),
                              TextSpan(
                                text: "Грудные мышцы ( первичные )\n",
                                style: AppStyles.jost12,
                              ),
                              TextSpan(
                                text: "Трицепс, плечи ( вторичные )",
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
