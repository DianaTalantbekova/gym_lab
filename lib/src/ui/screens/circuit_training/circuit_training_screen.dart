import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/circtuit_training_table.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../screens.dart';

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
                context.pushNamed(WorkProcessScreen.route);
              },
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
