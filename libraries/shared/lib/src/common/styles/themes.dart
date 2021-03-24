import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class Themes {
  static ThemeData linghtTheme = ThemeData(
    // fontFamily: "",
    backgroundColor: ColorPalettes.lightBG,
    primaryColor: ColorPalettes.linghtPrimary,
    accentColor: ColorPalettes.linghtAccent,
    dividerColor: ColorPalettes.darkBG,
    scaffoldBackgroundColor: ColorPalettes.lightBG,
    appBarTheme: AppBarTheme(
        textTheme: TextTheme(
            headline6: TextStyle(
                color: ColorPalettes.darkBG,
                fontSize: 10.0,
                fontWeight: FontWeight.bold))),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'IBMPlexSans',
    brightness: Brightness.dark,
    backgroundColor: ColorPalettes.darkBG,
    primaryColor: ColorPalettes.dartPrimary,
    accentColor: ColorPalettes.darkAccent,
    dividerColor: ColorPalettes.linghtPrimary,
    scaffoldBackgroundColor: ColorPalettes.darkBG,
    cursorColor: ColorPalettes.darkAccent,
    appBarTheme: AppBarTheme(
      color: ColorPalettes.dartPrimary,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ColorPalettes.lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
