import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/resources/app_colors.dart';
import 'package:gym_labb/screens/work_proccess/work_proccess_screen.dart';
import 'package:gym_labb/widgets/circtuit_training_table.dart';
import 'package:gym_labb/widgets/gl_app_bar.dart';
import 'package:gym_labb/widgets/gl_button.dart';
import 'package:gym_labb/widgets/gl_scaffold.dart';

class CircuitTrainingScreen extends StatelessWidget {
  const CircuitTrainingScreen({super.key});

  static const String route = "circuit-training";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        title: Text(
          'КРУГОВАЯ ТРЕНИРОВКА',
          style: GoogleFonts.jost(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(12),
            const CircuitTable(),
            const Spacer(),
            GLButton(
              color: AppColors.blue,
              text: "НАЧАТЬ ТРЕНИРОВКУ",
              onPressed: () {
                context.pushNamed(WorkProcessPage.route);
              },
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
