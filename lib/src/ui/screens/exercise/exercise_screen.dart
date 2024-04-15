import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gym_labb/gen/assets.gen.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_scaffold.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  static const String route = "exercise-page";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
        // appBar: GLAppBar(
        //   leading: GLIconButton(
        //     icon: Assets.icons.navigation.back.svg(),
        //     onTap: () {},
        //   ),
        //   action: GLIconButton(
        //     icon: Assets.icons.add.svg(),
        //     onTap: () {},
        //   ),
        //   title: Text(
        //     "ГРУДЬ , БИЦЕПС",
        //     style: AppStyles.jost12Bold,
        //   ),
        // ),
        // body: Column(
        //   children: [
        //     const Gap(12),
        //     ExerciseCard(
        //       image: Assets.images.exercise1.provider(),
        //       name: "ЖИМ ЛЕЖА",
        //       sets: 4,
        //     ),
        //     const Gap(16),
        //     ExerciseCard(
        //       image: Assets.images.exercise2.provider(),
        //       name: "РАЗВЕДЕНИЕ НОГ",
        //       sets: 4,
        //     ),
        //     const Spacer(),
        //     GLButton(
        //       color: AppColors.blue,
        //       text: "СОХРАНИТЬ ТРЕНИРОВКУ",
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
        );
  }
}

class ExerciseCard extends StatefulWidget {
  const ExerciseCard({
    super.key,
    required this.image,
    required this.name,
    required this.sets,
  });

  final ImageProvider image;
  final String name;
  final int sets;

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Gap(8.5),
          Container(
            width: 72,
            height: 50,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(image: widget.image),
            ),
          ),
          const Gap(12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${widget.name}\n",
                  style: AppStyles.jost14Bold.copyWith(color: AppColors.white),
                ),
                TextSpan(
                  text: "${widget.sets} подхода",
                  style: AppStyles.jost12.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          const Spacer(),
          GLIconButton(
            icon: Assets.icons.training.burger.svg(),
            onTap: () {},
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
