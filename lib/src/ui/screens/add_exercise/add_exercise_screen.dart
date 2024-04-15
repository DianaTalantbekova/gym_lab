import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../infrastructure/gen/assets.gen.dart';
import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_bottom_action_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../../widgets/gl_text_form_field.dart';
import '../exercise/exercise_info_screen.dart';

class AddExerciseScreen extends StatefulWidget {
  const AddExerciseScreen({super.key});

  static const String route = "add-exercise";

  @override
  State<AddExerciseScreen> createState() => _AddExerciseScreenState();
}

class _AddExerciseScreenState extends State<AddExerciseScreen>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      horizontalPadding: 0,
      appBar: GLAppBar(
        action: Stack(
          clipBehavior: Clip.none,
          children: [
            GLIconButton(
              icon: Assets.icons.navigation.list.svg(),
              onTap: () {
                context.pop();
              },
            ),
            Positioned(
              right: -5,
              bottom: -5,
              child: Container(
                width: 14,
                height: 14,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blue,
                ),
                alignment: Alignment.center,
                child: const Text(
                  "4",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
        leading: GLIconButton(
          icon: Assets.icons.navigation.back.svg(),
          onTap: () {
            context.pop();
          },
        ),
        title: Text(
          "ДОБАВИТЬ УПРАЖНЕНИЕ",
          style: AppStyles.jost12Bold,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: GLTextFormField(
                hintText: "Найти упражнение",
                icon: Assets.icons.search.svg(),
                onChanged: (value) {},
              ),
            ),
            const Gap(16),
            TabBar(
              controller: controller,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelStyle: AppStyles.jost12Bold,
              indicatorWeight: 0.15,
              indicator: const ShapeDecoration(
                shape: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(
                    color: AppColors.white,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              dividerHeight: 0,
              tabs: const [
                Tab(
                  text: "ВСЕ",
                  height: 17,
                ),
                Tab(
                  text: "ГРУДЬ",
                  height: 17,
                ),
                Tab(
                  text: "СПИНА",
                  height: 17,
                ),
                Tab(
                  text: "БИЦЕПС",
                  height: 17,
                ),
                Tab(
                  text: "ПРЕСС",
                  height: 17,
                ),
              ],
            ),
            const Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: AddExerciseButton(
                onTap: () {},
              ),
            ),
            const Gap(20),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ExerciseList(
                          letter: "ABC".characters.toList()[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const Gap(20);
                    },
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ExerciseList(
                          letter: "ABC".characters.toList()[index]);
                    },
                    separatorBuilder: (context, index) {
                      return const Gap(20);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomBar: GLBottomActionBar(
        onSupersetTap: () {
          // context.pushNamed(ExercisePage.route);
        },
        onAddTap: () {
          // context.pushNamed(ExercisePage.route);
        },
      ),
    );
  }
}

class AddExerciseButton extends StatelessWidget {
  const AddExerciseButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: 0.3,
        child: Container(
          height: 66,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.white),
          ),
          child: Row(
            children: [
              const Gap(8),
              Container(
                width: 72,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.white),
                ),
                child: Center(
                  child: Assets.icons.add.svg(),
                ),
              ),
              const Gap(12),
              Text(
                "Добавить упражнение",
                style: AppStyles.jost12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExerciseList extends StatelessWidget {
  const ExerciseList({
    super.key,
    required this.letter,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            letter,
            style: AppStyles.jost12Bold,
          ),
        ),
        const Gap(8),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return ExerciseCard(
              // isSelected: letter == "A" && index == 0,
              isSelected: (letter == "A" && index < 3) || index == 0,
              image: index % 2 != 0
                  ? Assets.images.exercise1.provider()
                  : Assets.images.exercise2.provider(),
              name: "ЖИМ ЛЕЖА",
              sets: 4,
            );
          },
          separatorBuilder: (context, index) {
            return const Gap(12);
          },
        )
      ],
    );
  }
}

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    super.key,
    bool? isSelected,
    required this.image,
    required this.name,
    required this.sets,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final ImageProvider image;
  final String name;
  final int sets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? AppColors.blue : AppColors.white),
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
              image: DecorationImage(image: image),
            ),
          ),
          const Gap(12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n",
                  style: AppStyles.jost14Bold.copyWith(
                      color: isSelected ? AppColors.blue : AppColors.white),
                ),
                TextSpan(
                  text: "$sets подхода",
                  style: AppStyles.jost12.copyWith(
                      color: isSelected ? AppColors.blue : AppColors.white),
                ),
              ],
            ),
          ),
          const Spacer(),
          GLIconButton(
            icon: Assets.icons.training.info
                // ignore: deprecated_member_use_from_same_package
                .svg(color: isSelected ? AppColors.blue : AppColors.white),
            onTap: () {
              context.pushNamed(ExerciseInfoScreen.route);
            },
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
