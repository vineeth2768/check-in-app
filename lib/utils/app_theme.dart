import 'package:check_in_app/utils/app_colors.dart'; // Import your AppColors
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // 1. Global Font Family
    fontFamily: "DM Sans",

    // 2. Material 3 Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.accentOrange,
      primary: AppColors.accentOrange,
      onPrimary: AppColors.textLight,
      secondary: AppColors.bottomNavIconInactive,
      onSecondary: AppColors.textLight,

      surface: AppColors.primaryDark,
      onSurface: AppColors.textLight,
      error: Colors.red,
      onError: Colors.white,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.primaryDark,

    // 4. Text Theme
    textTheme: const TextTheme(
      // Login Screen - 'Login'
      displaySmall: TextStyle(
        color: AppColors.accentOrange,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
      // Login Screen - 'Welcome back to your account'
      headlineSmall: TextStyle(
        color: AppColors.textLight,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      // Login Screen - 'Phone number', 'PassCode'
      titleSmall: TextStyle(
        color: AppColors.textLight,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
      // Login Screen - 'Remember me'
      labelSmall: TextStyle(
        color: AppColors.textLight,
        fontSize: 13,
        fontWeight: FontWeight.w300,
      ),
      // Login Screen - 'Don't have account?'
      bodySmall: TextStyle(
        color: AppColors.textLight,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      // Login Screen - 'Register'
      labelMedium: TextStyle(
        color: AppColors.accentOrange,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      // HomeScreen - 'Hey Jose'
      headlineMedium: TextStyle(
        color: AppColors.homeScreenDarkText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      // HomeScreen - 'Tuesday 17 June, 2025'
      bodyMedium: TextStyle(
        color: AppColors.homeScreenDarkText,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      // HomeScreen - 'Working Hours'
      titleMedium: TextStyle(
        color: AppColors.textGrey,
        fontSize: 13,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      ),
      // HomeScreen - '00:00:00 Hrs'
      displayMedium: TextStyle(
        color: AppColors.textLight,
        fontSize: 30,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
      ),
      // CheckInDialog - 'Check-in' title
      headlineLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      // CheckInDialog - 'Select Check-in Type'
      bodyLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      // CheckInDialog - 'Worker' label, 'Select Work Type'
      titleLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    // 5. Input Decoration Theme (for CustomTextfield)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputFieldBackground,
      hintStyle: TextStyle(color: AppColors.textLight),
      labelStyle: const TextStyle(color: AppColors.textLight),
      floatingLabelStyle: const TextStyle(color: AppColors.accentOrange),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      // Border styles for all states
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.boarderSideColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.boarderSideColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.boarderSideColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
    ),

    // 6. Checkbox Theme
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.textLight;
        }
        return AppColors.textLight;
      }),
      checkColor: WidgetStateProperty.all(AppColors.accentOrange),
      side: const BorderSide(color: AppColors.boarderSideColor, width: 1.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),

    // 7. TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.accentOrange,
        textStyle: const TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w300,
          fontSize: 13,
        ),
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),

    // 8. ElevatedButton Theme (for CustomButton if it uses ElevatedButton)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentOrange,
        foregroundColor: AppColors.textLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        textStyle: const TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        minimumSize: const Size.fromHeight(50),
      ),
    ),

    // 9. Dialog Theme (for CheckInDialog)
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.primaryDark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // 10. Icon Theme
    iconTheme: const IconThemeData(color: AppColors.textLight, size: 24),

    // 11. Radio Theme (for RadioListTile in CheckInDialog)
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.accentOrange;
        }
        return AppColors.textLight;
      }),
      overlayColor: WidgetStateProperty.all(AppColors.accentOrange),
    ),

    // 12. Dropdown Menu Theme (for dropdown's popup menu, not the field itself)
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.primaryDark),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ),
  );
}
