import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';

class AppDecorations {
  AppDecorations._();

  static BoxDecoration buildBoxDecorationImage(
      {double radius = 0, required String decImage}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      image: DecorationImage(
        image: AssetImage(
          decImage,
        ),
        fit: BoxFit.fill,
      ),
    );
  }

  static BoxDecoration decorationWithShadow(
      {double? borderRadius = 12,
      double? borderWidth,
      double? blurRadius,
      double? spreadRadius,
      BorderRadius? radius,
      Offset? offset,
      Color? borderColor,
      Color? decColor}) {
    return BoxDecoration(
        borderRadius: radius ?? BorderRadius.circular(borderRadius!),
        border: Border.all(
            color: borderColor ?? Colors.transparent, width: borderWidth ?? 1),
        color: decColor ?? AppColors.white,
        boxShadow: [
          BoxShadow(
              offset: offset ?? Offset.zero,
              color: Colors.grey.withOpacity(0.2),
              blurRadius: blurRadius ?? 2,
              spreadRadius: spreadRadius ?? 2),
        ]);
  }

  static BoxDecoration boxDecorationwithoutShadow(
      {Color? borderColor,
      Color? backgroundColor,
      double? borderRadius,
      double? borderWidth,
      BorderRadius? radius}) {
    return BoxDecoration(
      borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 12),
      color: backgroundColor ?? AppColors.white,
      border: Border.all(
          width: borderWidth ?? 1, color: borderColor ?? AppColors.white),
    );
  }

  static BoxDecoration decorationwithShape(
      {Color? backgroundColor,
      BoxShape? shape,
      double? borderRadius,
      double? borderWidth = 0,
      double? blurRadius,
      double? spreadRadius,
      Color? borderColor,
      bool enableShadow = false,
      BorderRadius? radius}) {
    return BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        border: Border.all(
            width: borderWidth!, color: borderColor ?? AppColors.white),
        shape: shape ?? BoxShape.circle,
        boxShadow: enableShadow
            ? [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: blurRadius ?? 2,
                    spreadRadius: spreadRadius ?? 2),
              ]
            : null);
  }


  static BoxDecoration buildBoxDecorationTwo(
      {double radius = 12.0,
      double? borderWidth,
      double xvalue = 0,
      double yvalue = 0,
      double blurRadius = 15,
      double spreadRadius = 0,
      double opacity = 0.03,
      double? decOpaciry,
      Color? borderColor,
      Color? decColor,
      Color shadowColor = const Color(0xFF000000),
      bool isDark = false}) {
    decColor ??= !isDark ? AppColors.light : AppColors.dark;
    return BoxDecoration(
      border:
          Border.all(color: borderColor ?? decColor, width: borderWidth ?? 0),
      borderRadius: BorderRadius.circular(radius),
      color: decOpaciry != null ? decColor.withOpacity(decOpaciry) : decColor,
      boxShadow: [
        BoxShadow(
          color: shadowColor.withOpacity(opacity),
          blurRadius: blurRadius,
          offset: Offset(xvalue, yvalue),
          spreadRadius: spreadRadius,
        ),
      ],
    );
  }


  ///mjv

  static BoxDecoration buildBoxDecoratioOne(
      {double radius = 12.0,
        double borderWidth = 0,
        Color? borderColor,
        Color? decColor,
        double? decOpacity,
        bool isDark = false}) {
    decColor ??= !isDark ? AppColors.light : AppColors.dark;

    return BoxDecoration(
      border: Border.all(
        width: borderWidth,
        color: borderColor ?? decColor,
      ),
      borderRadius: BorderRadius.circular(radius),
      color: decOpacity != null ? decColor.withOpacity(decOpacity) : decColor,
    );
  }



  static BoxDecoration buildBoxDecorationThree(
      {double topLeft = 0,
        double topRight = 0,
        double bottomLeft = 0,
        double bottomRight = 0,
        Color? borderColor,
        double borderWidth = 1.0,
        Color? decColor,
        bool isDark = false}) {
    decColor ??= !isDark ? AppColors.light : AppColors.dark;

    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      color: decColor,
      border: Border.all(color: borderColor ?? decColor, width: borderWidth),
    );
  }

  static BoxDecoration buildGradientBoxDecorationOne(
      {double radius = 12.0,
        Color? borderColor,
        required List<Color> decColor,
        required List<double> stops,
        Alignment begin = Alignment.topLeft,
        Alignment end = Alignment.bottomRight}) {
    return BoxDecoration(
      gradient: LinearGradient(
          transform: GradientRotation(101),
          colors: decColor,
          begin: begin,
          end: end,
          stops: stops),
      border: Border.all(color: borderColor ?? Colors.transparent),
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static BoxDecoration buildGradientBoxDecorationTwo({
    double radius = 12.0,
    Color? borderColor,
    required List<Color> decColor,
  }) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(101),
        colors: decColor,
      ),
      border: Border.all(color: borderColor ?? Colors.transparent),
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static BoxDecoration buildGradientBoxDecorationThree(
      {double? borderWidth,
        double xvalue = 0,
        double yvalue = 0,
        double blurRadius = 15,
        double spreadRadius = 0,
        double opacity = 0.03,
        double? decOpaciry,
        Color shadowColor = const Color(0xFF000000),
        bool isDark = false,
        double radius = 12.0,
        Color? borderColor,
        Color? decColor,
        required List<Color> gradColor,
        List<double>? stops,
        GradientTransform? transform,
        Alignment begin = Alignment.topCenter,
        Alignment end = Alignment.bottomRight}) {
    return BoxDecoration(
      gradient: LinearGradient(
          transform:transform ,
          colors: gradColor,
          begin: begin,
          end: end,
          stops: stops),
      border: Border.all(color: borderColor ?? Colors.transparent),
      borderRadius: BorderRadius.circular(radius),
      color: decOpaciry != null ? decColor?.withOpacity(decOpaciry) : decColor,
      boxShadow: [
        BoxShadow(
          color: shadowColor.withOpacity(opacity),
          blurRadius: blurRadius,
          offset: Offset(xvalue, yvalue),
          spreadRadius: spreadRadius,
        ),
      ],
    );
  }

  static BoxDecoration buildBoxDecorationFour(
      {double topLeft = 0,
        double topRight = 0,
        double bottomLeft = 0,
        double bottomRight = 0,
        double borderWidth = 1.0,
        double xvalue = 0,
        double yvalue = 0,
        double blurRadius = 14.9,
        double spreadRadius = 0,
        double opacity = 0.35,
        double decOpaciry = 1,
        Color? borderColor,
        Color decColor = const Color(0xFFFFFFFF),
        int? cond}) {
    return BoxDecoration(
      // border:Border.all(color: borderColor ?? decColor, width: borderWidth),
      border: Border(
        top: BorderSide(color: borderColor ?? decColor, width: borderWidth),
        left: BorderSide(color: borderColor ?? decColor, width: borderWidth),
        right: BorderSide(color: borderColor ?? decColor, width: borderWidth),
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      color: decColor.withOpacity(decOpaciry),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF270725).withOpacity(opacity),
          blurRadius: blurRadius,
          offset: Offset(xvalue, yvalue),
          spreadRadius: spreadRadius,
        ),
      ],
    );
  }
}
