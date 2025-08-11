import 'package:flutter/material.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

extension ContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get height_100 =>
      AppSizes.getHeight(size: 100, screenHeight: screenHeight);
  double get width_100 =>
      AppSizes.getWidth(size: 100, screenWidth: screenWidth);
}
