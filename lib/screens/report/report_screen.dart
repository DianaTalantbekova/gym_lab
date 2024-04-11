import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/widgets/gl_app_bar.dart';
import 'package:gym_labb/widgets/gl_scaffold.dart';
import 'package:gym_labb/widgets/mini_stats_box.dart';
import 'package:gym_labb/widgets/more_stats_box.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  static const String route = "report";

  @override
  Widget build(BuildContext context) {
    return GLScaffold(
      appBar: GLAppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFFFFFF),
            size: 12,
          ),
        ),
        title: Text(
          'ОТЧЕТ ПО ТРЕНИРОВКЕ',
          style: GoogleFonts.jost(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xffFFFFFF),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Gap(32),
          const MiniStatBox(),
          const SizedBox(height: 18),
          const MoreStatBox(),
          const SizedBox(height: 20),
          SizedBox(
            height: 139,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) => Container(
                width: double.infinity,
                height: 66,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/training_images/leg_spread.png',
                      width: 72,
                      height: 50,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'РАЗВЕДЕНИЕ НОГ',
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffFFFFFF),
                          ),
                        ),
                        Text(
                          '4 подхода',
                          style: GoogleFonts.jost(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffFFFFFF),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/another_icons/menu_icon.png',
                      width: 14,
                      height: 10,
                    ),
                    const SizedBox(width: 32),
                  ],
                ),
              ),
              separatorBuilder: (_, __) => const SizedBox(height: 7),
              itemCount: 2,
            ),
          ),
          const SizedBox(height: 103),
        ],
      ),
    );
  }
}
