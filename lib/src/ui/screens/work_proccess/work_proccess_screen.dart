import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_bottom_stats_bar.dart';
import '../../widgets/gl_scaffold.dart';
import '../screens.dart';

class WorkProcessScreen extends StatelessWidget {
  const WorkProcessScreen({super.key});

  static const String route = "work-process";

  @override
  Widget build(BuildContext context) {
    bool value = false;

    return GLScaffold(
      appBar: GLAppBar(
        title: Text(
          Strings.of(context).work,
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
            context.pop();
          },
        ),
        action: Assets.icons.timer.soundMax.image(
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
                    Strings.of(context).pauseTheWorkoutIfIExitTheApp,
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                CupertinoSwitch(
                  value: value,
                  onChanged: (newValue) =>
                      context.pushNamed(TimeoutProcessPage.route),
                ),
              ],
            ),
          ),
          const SizedBox(height: 72),
          Assets.icons.timer.group8644.image(
            width: 250,
            height: 250,
          ),
          const SizedBox(height: 75),
          Flexible(
            child: Column(
              children: [
                Text(
                  'сейчас',
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF).withOpacity(0.3),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${Strings.of(context).exercise} 1',
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
          Assets.icons.timer.group86452.image(
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
