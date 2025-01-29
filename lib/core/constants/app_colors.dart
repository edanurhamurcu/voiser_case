import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFB171FB);
  static const Color secondary = Color(0xFF825CEA);
  static const Color accent = Color(0xFF34C759);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF202425);
  static const Color backgroundColor = Color(0x00202425);

  // Switch Colors
  static const Color switchActive = Color(0xFF875DEB);
  static const Color switchInactive = Color(0xFF202425);

  // Button Color
  static const Color buttonColor = Color(0xFF875DEB);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF825CEA),
      Color(0xFFB171FB),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [
      Color(0xFF825CEA),
      Color(0xFF34C759),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
