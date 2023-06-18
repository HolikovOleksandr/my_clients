import 'package:flutter/material.dart';

class AppTheme {
  // -----Colors-----
  static const Color darkPrimary = Color.fromARGB(255, 39, 2, 74);
  static const primary = Color(0xFF521491);
  static const secondary = Color(0xFF731FB6);
  static const tertiary = Color(0xFFB32EDC);
  static const quaternary = Color(0xFFE37EE7);
  static const fivestage = Color(0xFFE3CCE9);
  static const sixstage = Color(0xFFF7F6FE);
  static const gradient = LinearGradient(
    colors: [
      Color(0xFF521491),
      Color(0xFF731FB6),
      Color(0xFFB32EDC),
      Color(0xFFE37EE7),
      Color(0xFFE3CCE9),
    ],
  );

  // -----Fonts-----
  static const title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppTheme.darkPrimary,
    letterSpacing: .4,
  );
  static const subTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppTheme.darkPrimary,
  );
  static const text = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppTheme.darkPrimary,
  );
  static const subText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppTheme.darkPrimary,
  );
  static const hintText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppTheme.darkPrimary,
  );
}
