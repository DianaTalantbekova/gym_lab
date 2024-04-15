import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/resources/app_colors.dart';
import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_bottom_stats_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../circuit_training/circuit_training_screen.dart';

class TimeoutProcessPage extends StatelessWidget {
  const TimeoutProcessPage({super.key});

  static const String route = "timeout-proccess";

  @override
  Widget build(BuildContext context) {
    bool value = true;

    return GLScaffold(
      appBar: GLAppBar(
        title: Text(
          'РАБОТА',
          style: GoogleFonts.jost(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
          ),
        ),
        leading: GLIconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFFFFFF),
            size: 12,
          ),
          onTap: () {
            context.goNamed(CircuitTrainingScreen.route);
          },
        ),
        action: Image.asset(
          'assets/icons/timer/sound_max.png',
          width: 25,
          height: 25,
        ),
      ),
      body: Column(
        children: [
          const Gap(32),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: const Color(0x00000000).withOpacity(0.3),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    'Приостановить тренировку,если я выхожу из приложения',
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                CupertinoSwitch(
                  activeColor: AppColors.blue,
                  value: value,
                  onChanged: (newValue) => context.pop(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 72),
          Image.asset(
            'assets/icons/timer/Group 8647 (1).png',
            width: 250,
            height: 250,
          ),
          const SizedBox(height: 75),
          Flexible(
            child: Column(
              children: [
                Text(
                  'далее',
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF).withOpacity(0.3),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'УПРАЖНЕНИЕ 1',
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Image.asset(
            'assets/icons/timer/Group 8645 (3).png',
            width: 240,
            height: 80,
          ),
          const SizedBox(height: 30),
        ],
      ),
      bottomBar: const GlBottomStatusBar(),
    );
  }
}
