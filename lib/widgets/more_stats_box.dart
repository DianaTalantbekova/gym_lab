import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/widgets/stats_table.dart';

class MoreStatBox extends StatelessWidget {
  const MoreStatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: const Color(0xffFFFFFF),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 66,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xff000000).withOpacity(0.3),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: const Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/training_images/bench_press.png',
                  width: 70,
                  height: 50,
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ЖИМ ЛЕЖА',
                      style: GoogleFonts.jost(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    Text(
                      '4 подхода',
                      style: GoogleFonts.jost(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
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
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    SizedBox(
                        width: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7092 кг',
                              style: GoogleFonts.jost(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              ' общий вес',
                              style: GoogleFonts.jost(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/stats_icons/up_white.png'),
                        const SizedBox(width: 4),
                        Text(
                          '+10',
                          style: GoogleFonts.jost(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffFFFFFF),
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
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                          Text(
                            'всего повторений',
                            style: GoogleFonts.jost(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset('assets/icons/stats_icons/down_white.png'),
                        const SizedBox(width: 4),
                        Text(
                          '-4',
                          style: GoogleFonts.jost(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffFFFFFF),
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
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: const Color(0xffFFFFFF).withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 37),
            child: TableStats(),
          ),
        ],
      ),
    );
  }
}
