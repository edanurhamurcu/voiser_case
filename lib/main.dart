// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiser_case/core/constants/app_colors.dart';
import 'package:voiser_case/features/home/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voiser App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark().copyWith(
          primary: AppColors.primary,
          surface: const Color(0xFF1C1C1E),
        ),
        scaffoldBackgroundColor: Color(0xFF1C1C1E),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
