import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniStatBox extends StatelessWidget {
  const MiniStatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: const Color(0xff66ACE8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 66,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xff66ACE8),
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 72,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xff66ACE8),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/another_icons/gym_icon.png',
                      width: 21,
                      height: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '3 УПРАЖНЕНИЯ',
                      style: GoogleFonts.jost(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff66ACE8),
                      ),
                    ),
                    Text(
                      '17 подходов',
                      style: GoogleFonts.jost(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff66ACE8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7092 кг',
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff66ACE8),
                          ),
                        ),
                        Text(
                          'общий вес',
                          style: GoogleFonts.jost(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff66ACE8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/stats_icons/up_blue.png'),
                        const SizedBox(width: 4),
                        Text(
                          '+90',
                          style: GoogleFonts.jost(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff66ACE8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(flex: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    SizedBox(
                      width: 98,
                      height: 38,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '224',
                            style: GoogleFonts.jost(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff66ACE8),
                            ),
                          ),
                          Text(
                            'всего повторений',
                            style: GoogleFonts.jost(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff66ACE8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/stats_icons/down_blue.png'),
                        const SizedBox(width: 4),
                        Text(
                          '-20',
                          style: GoogleFonts.jost(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff66ACE8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(
                  flex: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
