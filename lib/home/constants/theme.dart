import 'package:flutter/material.dart';
import 'package:quiz/home/constants/theme_form.dart' show kThemeFieldLabelColor;

/// the basic [colors] of core theme
const Color kThemePrimaryColor = Color.fromARGB(255, 36, 38, 59);
const Color kThemeBackgroundColor = Color.fromARGB(255, 55, 56, 86);
const Color kThemeBackgroundSecondaryColor = Color.fromARGB(255, 121, 120, 160);
const Color kThemeSecondaryColor = Color.fromARGB(175, 59, 63, 102);
const Color kThemeFieldBorderColor = Color.fromARGB(255, 121, 120, 160);
const Color kThemeFieldActiveBorderColor = Color.fromARGB(255, 122, 119, 187);
const Color kThemeDivederColor = Color.fromARGB(255, 121, 120, 160);
const Color kThemeEnableIconColor = Color.fromARGB(255, 33, 150, 243);
const Color kThemeDisableIconColor = Color.fromARGB(255, 121, 120, 160);

/// declare Application [themeData]
ThemeData kThemeData = ThemeData(
  fontFamily: "Yekan",
  backgroundColor: kThemeBackgroundColor,
  scaffoldBackgroundColor: kThemePrimaryColor,
  dividerColor: kThemeDivederColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(
      color: kThemeEnableIconColor,
      shadows: [
        Shadow(blurRadius: 4.0),
      ],
      size: 30.0,
    ),
    unselectedIconTheme: IconThemeData(
      color: kThemeDisableIconColor,
      shadows: [
        Shadow(
          blurRadius: 4.0,
        ),
      ],
      size: 30.0,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: kThemeFieldLabelColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: kThemeFieldBorderColor,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kThemeFieldBorderColor,
        width: 1.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: kThemeFieldActiveBorderColor,
        width: 1.5,
      ),
    ),
  ),
);
