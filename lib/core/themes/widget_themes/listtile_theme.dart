import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';

class AppListTileTheme {
  AppListTileTheme._();

  static const lightTileTheme = ListTileThemeData(
    iconColor: AppColors.primary,
    selectedTileColor: AppColors.grey,
    selectedColor: AppColors.secondary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
  );

  static const darkTileTheme = ListTileThemeData(
    iconColor: AppColors.primary,
    selectedColor: AppColors.secondary,
    selectedTileColor: AppColors.grey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
  );
}
