import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_labb/src/ui/blocs/workout_bloc/workout_bloc.dart';
import 'package:gym_labb/src/ui/screens/training/training_details_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../../infrastructure/resources/app_styles.dart';
import '../../widgets/bottom_sheets.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../../widgets/training_card.dart';
import '../add_exercise/add_exercise_screen.dart';
import 'bloc/training_bloc.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  static const String route = "training";

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  void initState() {
    context.read<TrainingBloc>().add(const TrainingEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        leading: RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: "GYM"),
              TextSpan(
                text: "LAB ",
                style: AppStyles.jost12Bold.copyWith(color: AppColors.blue),
              ),
              const TextSpan(text: "/ ТРЕНИРОВКИ"),
            ],
            style: AppStyles.jost12Bold,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<TrainingBloc>().add(const TrainingEvent.started(isRefresh: true));
        },
        child: Column(
          children: [
            const Gap(12),
            Expanded(
              child: BlocBuilder<TrainingBloc, TrainingState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: state.trainings.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                TrainingCard(
                                  item: state.trainings[index],
                                ),
                                const Gap(16)
                              ],
                            );
                          },
                        );
                },
              ),
            ),
            const Gap(16),
            GLButton(
              color: AppColors.blue,
              text: "СОЗДАТЬ НОВУЮ ТРЕНИРОВКУ",
              onPressed: () {
                BottomSheets.showCreateTrainingModalBottomSheet(context);
              },
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
