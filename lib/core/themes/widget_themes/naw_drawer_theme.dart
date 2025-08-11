import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart' show AppColors;

class AppDrawerTheme {
  AppDrawerTheme._();

  static const lightdrawerTheme = DrawerThemeData(
    backgroundColor: AppColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
    elevation: 1,
    shadowColor: AppColors.white,
  );

  static const darkdrawerTheme = DrawerThemeData(
    backgroundColor: AppColors.dark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
    elevation: 1,
    shadowColor: AppColors.dark,
  );
}
