import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  static Color backgroundColor = const Color(0xff040B3D);
  // static Color lightPrimaryColor = const Color(0xffff8900);
  // static Color lightSecondaryColor = const Color(0xff040415);
  // static Color lightAccentColor = Colors.blueGrey.shade200;
  // static Color lightParticlesColor = const Color(0x44948282);
  // static Color lightTextColor = Colors.black54;

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: backgroundColor,
      // primaryColor: lightPrimaryColor,
      // backgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // appBarTheme: AppBarTheme(backgroundColor: lightPrimaryColor),
      // colorScheme: ColorScheme.light(secondary: lightSecondaryColor),
      // textButtonTheme: TextButtonThemeData(
      //     style: TextButton.styleFrom(primary: lightBackgroundColor))
  );

}
