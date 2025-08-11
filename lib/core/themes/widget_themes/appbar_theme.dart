import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.textWhite, size: AppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColors.textWhite, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textWhite),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.dark,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.white, size: AppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColors.white, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: AppColors.white),
  );
}
