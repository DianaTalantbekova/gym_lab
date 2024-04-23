import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/ui/screens/add_exercise/bloc/add_exercise_bloc.dart';

import '../../../domain/entity/training_entity.dart';
import '../../../infrastructure/l10n/strings.dart';
import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_bottom_action_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../../widgets/gl_text_form_field.dart';
import '../exercise/exercise_info_screen.dart';

class AddExerciseScreen extends StatefulWidget {
  const AddExerciseScreen({super.key, required this.trainingId});

  static const String route = "add-exercise";
  final int trainingId;

  @override
  State<AddExerciseScreen> createState() => _AddExerciseScreenState();
}

class _AddExerciseScreenState extends State<AddExerciseScreen>
    with TickerProviderStateMixin {
  late final TabController controller;
  late final PageController pageController;

  List<Map<ExerciseType, String>> tabs(BuildContext context) {
    return [
      {ExerciseType.all: Strings.of(context).all},
      {ExerciseType.chest: Strings.of(context).chest},
      {ExerciseType.back: Strings.of(context).back},
      {ExerciseType.biceps: Strings.of(context).biceps},
      {ExerciseType.press: Strings.of(context).press},
    ];
  }

  @override
  void initState() {
    super.initState();
    context.read<AddExerciseBloc>().add(const AddExerciseEvent.started());
    controller = TabController(length: 5, vsync: this);
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    controller.dispose();
    super.dispose();
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
          Strings.of(context).addExercise,
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
                hintText: Strings.of(context).findExercise,
                icon: Assets.icons.search.svg(),
                onChanged: (value) {},
              ),
            ),
            const Gap(16),
            TabBar(
              onTap: (value) {
                pageController.animateToPage(
                  value,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
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
              tabs: tabs(context).map((e) {
                return Tab(
                  text: e.values.first,
                  height: 17.h,
                );
              }).toList(),
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
              child: BlocBuilder<AddExerciseBloc, AddExerciseState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const Center(
                          child:
                              CircularProgressIndicator(color: AppColors.blue),
                        )
                      : PageView.builder(
                          controller: pageController,
                          onPageChanged: (value) {
                            controller.animateTo(value);
                          },
                          itemCount: tabs(context).length,
                          itemBuilder: (BuildContext context, int tabIndex) {
                            return ListView.builder(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              itemCount: state.exercisesWithLetters.length,
                              itemBuilder: (context, index) {
                                final List<ExerciseEntity> items = [];
                                for (var i in state.exercisesWithLetters.values
                                    .toList()[index]) {
                                  items.add(i);
                                }
                                final sortedItems = items.where((element) {
                                  return element.exerciseType.contains(
                                      tabs(context)[tabIndex].keys.first);
                                }).toList();
                                return sortedItems.isEmpty
                                    ? const SizedBox()
                                    : ExerciseList(
                                        letter: state.exercisesWithLetters.keys
                                            .toList()[index]
                                            .toUpperCase(),
                                        items: sortedItems);
                              },
                            );
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
      bottomBar: BlocBuilder<AddExerciseBloc, AddExerciseState>(
        builder: (context, state) {
          return GLBottomActionBar(
            onAddTap: () {
              context.read<AddExerciseBloc>().add(
                    const AddExerciseEvent.add(),
                  );

            },
          );
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
                Strings.of(context).addExerciseLC,
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
    required this.items,
  });

  final String letter;
  final List<ExerciseEntity> items;

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
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ExerciseCard(
              // isSelected: letter == "A" && index == 0,
              isSelected: (letter == "A" && index < 3) || index == 0,
              image: items[index].imageUrl,
              name: items[index].name,
              sets: items[index].approaches?.length ?? 0,
            );
          },
          separatorBuilder: (context, index) {
            return const Gap(12);
          },
        ),
        const Gap(20),
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
  final String image;
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
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
          const Gap(12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n".toUpperCase(),
                  style: AppStyles.jost14Bold.copyWith(
                      color: isSelected ? AppColors.blue : AppColors.white),
                ),
                TextSpan(
                  text: "$sets ${Strings.of(context).approaches}",
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
