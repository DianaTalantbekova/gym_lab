import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlBottomStatusBar extends StatelessWidget {
  const GlBottomStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 54,
        color: const Color(0xFF0E1116),
        child: Row(
          children: [
            const Spacer(flex: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 11),
                Text(
                  '1/4',
                  style: GoogleFonts.jost(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'УПРАЖНЕНИЕ',
                  style: GoogleFonts.jost(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF).withOpacity(0.3),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 4),
            const VerticalDivider(
              indent: 18,
              endIndent: 22,
            ),
            const Spacer(flex: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 11),
                Text(
                  '1/8',
                  style: GoogleFonts.jost(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'КРУГ',
                  style: GoogleFonts.jost(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF).withOpacity(0.3),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 6),
          ],
        ),
      ),
    );
  }
}
