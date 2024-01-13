import 'package:flutter/material.dart';


import '../utility/constants/light_theme_colors.dart';

class LightTheme{
  final _lightColor=LightThemeColor();
  late ThemeData theme;

  LightTheme(){
    theme=ThemeData(
        scaffoldBackgroundColor: _lightColor.scaffoldBackground,
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: _lightColor.blue),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
            backgroundColor: LightThemeColor().blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)))),

        appBarTheme: AppBarTheme(
            backgroundColor: LightThemeColor().white,
            foregroundColor: Colors.black//here you can give the text color
        )



    );
  }

}



