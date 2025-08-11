import 'package:flutter/material.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: AppSizes.appBarHeight,
      left: AppSizes.defaultSpace,
      bottom: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace);

  static const EdgeInsetsGeometry paddingAllLarge =
      EdgeInsets.all(AppSizes.defaultSpace);
  static const EdgeInsetsGeometry paddingAllMedium =
      EdgeInsets.all(AppSizes.md);
  static const EdgeInsetsGeometry doctorCard = EdgeInsets.symmetric(
    vertical: AppSizes.defaultSpace,
  );
  static const EdgeInsetsGeometry paddAddDoctor = EdgeInsets.fromLTRB(
      AppSizes.sm, AppSizes.defaultSpace, AppSizes.sm, AppSizes.defaultSpace);

  static const EdgeInsetsGeometry inputSpacing = EdgeInsets.all(AppSizes.smd);

  static const EdgeInsetsGeometry paddAddchem = EdgeInsets.fromLTRB(
      AppSizes.sm, AppSizes.defaultSpace, AppSizes.sm, AppSizes.defaultSpace);

  static paddingAll({double? value}) {
    return EdgeInsets.all(value ?? AppSizes.size_24);
  }

  static paddingHorizantal({double? value}) {
    return EdgeInsets.symmetric(horizontal: value ?? AppSizes.size_24);
  }

  static paddingVertical({double? value}) {
    return EdgeInsets.symmetric(vertical: value ?? AppSizes.size_24);
  }

  static paddingOnly({double? left, right, top, bottom}) {
    return EdgeInsets.only(
        left: left ?? 0, right: right ?? 0, top: top ?? 0, bottom: bottom ?? 0);
  }

  static paddingHorVert({double? horizontal,vertical}) {
    return EdgeInsets.symmetric(vertical: vertical ?? AppSizes.size_24,horizontal: horizontal??AppSizes.size_24);
  }


  static hGapSmall({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_12,
    );
  }

  static hGapMedium({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_16,
    );
  }

  static hGapLarge({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_24,
    );
  }

  static hGapXLarge({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_48,
    );
  }

  static vGapSmall({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_12,
    );
  }

  static vGapMedium({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_16,
    );
  }

  static vGapLarge({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_24,
    );
  }

  static vGapXLarge({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_48,
    );
  }
  static shapeCard({double? radius}) {
    return WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 3.0)));
  }
}
