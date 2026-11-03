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
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          contentPadding: const EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.error,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.error,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ));
  }
}
