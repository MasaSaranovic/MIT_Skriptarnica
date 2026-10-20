import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/consts/app_colors.dart';

class Styles {
  static ThemeData themeData({required BuildContext context}) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightScaffoldColor,
      cardColor: AppColors.lightCardColor,
    );
  }
}
