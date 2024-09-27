import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData cosmartDarkTheme = ThemeData(
  brightness: Brightness.dark, // Defines the theme as a dark theme
  primaryColor: const Color(0xFF673AB7), // Teal accent color
  colorScheme: const ColorScheme.dark(
    secondary: Color(0xFF009688), // Soft orange for secondary actions
  ),

  scaffoldBackgroundColor:
      const Color(0xFF121212), // Main background color for all screens
  cardColor: const Color(0xFF1E1E1E), // Surface color for cards and containers
  dividerColor: const Color(0xFF333333), // Color for dividers and borders

  textTheme: TextTheme(
    displayLarge: GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    titleLarge: GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    bodyLarge: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white70,
      ),
    ),
    bodyMedium: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
    labelLarge: GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),

  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF00BFA6), // Primary button background color
    disabledColor: Color(0xFF424242), // Disabled button background color
    textTheme: ButtonTextTheme
        .primary, // Ensures that buttons use the correct text color
  ),

  iconTheme: const IconThemeData(
    color: Color(
        0xFFFFFFFF), // Primary icon color for icons in app bar or key actions
  ),

  // colorScheme: ColorScheme.dark(
  //   secondary: const Color(0xFFFF6E40), // Accent icon color for secondary actions
  // ),

  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: Color(0xFF333333)), // Border color for input fields
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: Color(0xFF00BFA6)), // Border color when the field is focused
    ),
    hintStyle: TextStyle(color: Color(0xFF757575)), // Hint text color
  ),
);
