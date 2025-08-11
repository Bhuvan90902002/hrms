import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

import 'common_text_view.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.style,
    required this.onPressed,
    this.child,
    this.text,
    this.color,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.textStyle,
    this.noHeight = false,
    this.backgroundColor,
    this.noWidth = false,
    this.isGradient = true,
    this.borderColor
  });

  final ButtonStyle? style;
  final Function() onPressed;
  final Widget? child;
  final String? text;
  final Color? color;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;
  final bool noHeight;
  final bool noWidth;
  final Color? backgroundColor;
  final bool isGradient;
  final Color? borderColor;

  // Responsive Width Calculation
  double getResponsiveWidth(Size size) {
    if (noWidth) return width ?? double.infinity;
    if (size.width >= 600) {
      // Tablet Width
      return width ?? size.width * 0.6; // 60% of screen width for tabs
    } else {
      // Mobile Width
      return width ?? size.width * 0.9; // 90% of screen width for mobile
    }
  }

  // Responsive Height Calculation
  double getResponsiveHeight(bool isTab) {
    if (noHeight) return height ?? AppSizes.size_48;
    return height ??
        (isTab ? AppSizes.size_56 : AppSizes.size_48); // Taller for tabs
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTab = size.width >= 600;

    return Container(
      margin: padding,
      decoration: isGradient
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            )
          : decoration,
      child: ElevatedButton(
        style: style ??
            ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.iconColor,
              fixedSize: Size(
                getResponsiveWidth(size),
                getResponsiveHeight(isTab),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getResponsiveHeight(isTab) *
                    0.2),
                // side: BorderSide(
                //   color: AppColors.iconColor,
                //   width: (getResponsiveHeight(isTab) * 0.01)
                //       .clamp(1.0, 2.0), // Adjust border thickness
                // ),
                side: decoration == null
                    ? BorderSide(
                  color: borderColor ?? AppColors.iconColor,
                  width: (getResponsiveHeight(isTab) * 0.01).clamp(1.0, 2.0),
                )
                    : BorderSide.none,
              ),
            ),
        onPressed: onPressed,
        child: child ??
            TextView(
              text: text ?? "Save",
              textStyle: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColors.light),
            ),
      ),
    );
  }
}
