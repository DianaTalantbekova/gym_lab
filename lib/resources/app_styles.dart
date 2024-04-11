import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_labb/gen/fonts.gen.dart';

abstract class AppStyles {
  static final TextStyle jost12 = GoogleFonts.jost(
    fontSize: 12,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost12Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost14Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost16Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost18Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost20Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
    letterSpacing: 1,
  );
  static final TextStyle jost24Bold = GoogleFonts.jost(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Colors.white,
    letterSpacing: 1,
  );
  static const TextStyle heinch64 = TextStyle(
    fontFamily: FontFamily.heinch,
    fontSize: 64,
    color: Colors.white,
    letterSpacing: 27 / 2,
  );
}
