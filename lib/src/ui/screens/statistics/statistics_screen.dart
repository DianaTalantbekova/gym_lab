import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import '../../widgets/buttons.dart';
import '../../widgets/gl_app_bar.dart';
import '../../widgets/gl_calendar.dart';
import '../../widgets/gl_scaffold.dart';
import '../report/report_screen.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  static const String route = "statistics";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        title: Text(
          Strings.of(context).statistics,
          style: GoogleFonts.jost(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: ListView(
          children: [
            const SizedBox(height: 32),
            const GLCalendar(),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${Strings.of(context).training} : ГРУДЬ , БИЦЕПС',
                  style: GoogleFonts.jost(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            GLButton(
              text: Strings.of(context).viewTheReport,
              onPressed: () {
                context.pushNamed(ReportScreen.route);
              },
            ),
            const SizedBox(height: 16),
            GLButton(
              text: Strings.of(context).removeHistory,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
