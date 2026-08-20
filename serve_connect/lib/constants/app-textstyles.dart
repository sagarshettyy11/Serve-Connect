import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app-colors.dart';

class AppTextStyles {
  // Titles & Headings
  static TextStyle titleLarge = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
    letterSpacing: -0.5,
  );

  static TextStyle titleMedium = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
    letterSpacing: -0.4,
  );

  static TextStyle titleSmall = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  // Subtitles & Body Text
  static TextStyle subtitle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textMuted,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textDark,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textDark,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppColors.textMuted,
  );

  // Form Controls & Labels
  static TextStyle inputLabel = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static TextStyle inputHint = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.iconColor,
  );

  static TextStyle inputText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.textDark,
  );

  // Buttons & Interactive Links
  static TextStyle buttonText = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle googleButtonText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static TextStyle linkText = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static TextStyle linkBold = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
}
