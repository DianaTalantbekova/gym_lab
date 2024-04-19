import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/src/infrastructure/l10n/strings.dart';

import 'buttons.dart';

class CircuitTable extends StatefulWidget {
  const CircuitTable({super.key});

  @override
  State<CircuitTable> createState() => _CircuitTableState();
}

class _CircuitTableState extends State<CircuitTable> {
  @override
  Widget build(BuildContext context) {
    List<String> listOfTrainingParts = [
      Strings.of(context).preparation,
      Strings.of(context).work,
      Strings.of(context).rest,
      Strings.of(context).exercisesRepeatAll,
      Strings.of(context).cipsWorkAndRest,
      Strings.of(context).restBetweenSets,
      Strings.of(context).calmDown,
    ];

    List<int> numbers = [
      10,
      20,
      10,
      20,
      10,
      20,
      30,
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: const Color(0xffFFFFFF),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 44,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '04:00',
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(width: 4),
                Image.asset(
                  'assets/icons/another_icons/Ellipse 224.png',
                  width: 4,
                  height: 4,
                ),
                const SizedBox(width: 4),
                Text(
                  '16 ${Strings.of(context).intervals}',
                  style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Column(
              children: [
                Text(
                  listOfTrainingParts[index],
                  style: GoogleFonts.jost(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    GLIconButton(
                      onTap: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white),
                        ),
                        child: Center(
                          child: Text(
                            '${numbers[index]}',
                            style: GoogleFonts.jost(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GLIconButton(
                      onTap: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: 7,
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
