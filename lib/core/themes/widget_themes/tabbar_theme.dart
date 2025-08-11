import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';

class AppTabBarTheme {
  AppTabBarTheme._();

  static const tabbarLightTheme = TabBarThemeData(
      labelColor: AppColors.textWhite,
      indicatorColor: AppColors.secondary,
      unselectedLabelColor: AppColors.darkGrey,
      indicatorSize: TabBarIndicatorSize.tab);

  static const tabbarDarkTheme = TabBarThemeData(
      labelColor: AppColors.dark,
      indicatorColor: AppColors.secondary,
      unselectedLabelColor: AppColors.darkGrey,
      indicatorSize: TabBarIndicatorSize.tab);
}
