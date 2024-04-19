import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

class TableStats extends StatelessWidget {
  const TableStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              Strings.of(context).approachesUC,
              style: GoogleFonts.jost(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFFFFFF),
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 84,
              height: 134,
              child: ListView.separated(
                itemBuilder: (contex, index) => SizedBox(
                  width: double.infinity,
                  height: 34,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffFFFFFF))),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: GoogleFonts.jost(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: 3,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              Strings.of(context).repeats,
              style: GoogleFonts.jost(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFFFFFF),
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 84,
              height: 134,
              child: ListView.separated(
                itemBuilder: (contex, index) => SizedBox(
                  width: double.infinity,
                  height: 34,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffFFFFFF))),
                    child: Center(
                      child: Text(
                        '12',
                        style: GoogleFonts.jost(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: 3,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              Strings.of(context).weightKG,
              style: GoogleFonts.jost(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFFFFFF),
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 84,
              height: 134,
              child: ListView.separated(
                itemBuilder: (contex, index) => SizedBox(
                  width: double.infinity,
                  height: 34,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffFFFFFF))),
                    child: Center(
                      child: Text(
                        '60',
                        style: GoogleFonts.jost(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
