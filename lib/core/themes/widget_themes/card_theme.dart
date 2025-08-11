import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';

class AppCardTheme {
  AppCardTheme._();

  static const cardLightTheme = CardThemeData(color: AppColors.lightContainer);

  static CardThemeData cardDarkTheme = CardThemeData(color: AppColors.dark);
}
