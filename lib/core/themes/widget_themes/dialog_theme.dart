import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class AppDialogTheme {
  AppDialogTheme._();

  static DialogThemeData dialogLightTheme = DialogThemeData(
    backgroundColor: AppColors.lightContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.size_06),
    ),
  );

  static DialogThemeData dialogDarkTheme = DialogThemeData(
    backgroundColor: AppColors.dark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.size_06),
    ),
  );
}
