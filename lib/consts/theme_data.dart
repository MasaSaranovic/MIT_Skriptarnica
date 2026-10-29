import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/consts/app_colors.dart';

class Styles {
  static ThemeData themeData({required BuildContext context}) {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.lightScaffoldColor,
        cardColor: AppColors.lightCardColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.lightScaffoldColor,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }
}
