import 'package:hrms/core/dimensions/app_dimension.dart';

class AppSizes {
  AppSizes._();

  static double screenHeight = AppDimension().screenSize.height;
  static double screenWidth = AppDimension().screenSize.width;

  static const double defaultWidth = 375;
  static const double defaultHeight = 812;

  static double getHeight(
      {required double size, required double screenHeight}) {
    return (screenHeight / defaultHeight) * size;
  }

  //static getHeight(double size) => (screenHeight / defaultHeight) * size;
  static getWidth({required double size, required double screenWidth}) =>
      (screenWidth / defaultWidth) * size;

  static getTextSize(double size, {double? factor = 0.3}) =>
      size + (getWidth(size: size, screenWidth: screenWidth) - size) * factor;
  static const double colSize = 1;
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double smd = 12.0;
  static const double md = 16.0;
  static const double xmd = 18.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  // Icon sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconSmd = 18.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;
  static const double iconHomeMenu = iconMd * 2;

  // Font sizes
  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLg = 18.0;
  static const double fontSizeXLg = 20.0;

  // Button sizes
  static const double buttonHeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;
  static const double buttonElevation = 4.0;

  // Image sizes
  static const double imageThumbSize = 80.0;

  // Default spacing between sections
  static const double defaultSpace = 18.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwSections = 32.0;

  // Border radius
  static const double borderRadiusSm = 4.0;
  static const double borderRadiusMd = 8.0;
  static const double borderRadiusLg = 12.0;
  static const double borderRadiusHomeCard = 5.0;

  // Input field
  static const double inputFieldRadius = borderRadiusSm;
  static const double spaceBtwInputFields = 16.0;

  // Card sizes
  static const double cardRadiusLg = 16.0;
  static const double cardRadiusMd = 12.0;
  static const double cardRadiusSm = 10.0;
  static const double cardRadiusXs = 6.0;
  static const double cardElevation = 2.0;

  // Loading indicator size
  //static const double loadingIndicatorSize = 36.0;

  // Grid view spacing
  //static const double gridViewSpacing = 16.0;

// Height
  static const double dividerHeight = 1.0;
  static const double appBarHeight = 56.0;
  static const double masterCardButtonHeight = 36.0;

  static const double height_2 = 2;
  static const double height_6 = 6;
  static const double height_8 = 8;
  static const double height_10 = 10;
  static const double height_12 = 12;
  static const double height_16 = 16;
  static const double height_18 = 18;
  static const double height_24 = 24;
  static const double height_28 = 28;
  static const double height_32 = 32;
  static const double height_36 = 36;
  static const double height_38 = 38;
  static const double height_45 = 45;
  static const double height_48 = 48;
  static const double height_50 = 50;
  static const double height_150 = 150;
  static double height_160 = 160;
  static double height_172 = 172;
  static double height_180 = 180;

  static double height_20 = 20;

  //Dimensions added by Yokesh

  static double height_30 = 30;
  static double height_5 = 5;
  static double height_40 = 40;

  static double height_60 = 60;
  static double height_70 = 70;
  static double height_75 = 75;
  static double height_80 = 80;
  static double height_90 = 90;
  static double height_100 = 100;
  static double height_120 = 120;
  static double height_130 = 130;
  static double height_140 = 140;
  static double height_200 = 200;
  static double height_220 = 220;
  static double height_230 = 230;
  static double height_250 = 250;
  static double height_300 = 300;
  static double height_320 = 320;
  static double height_450 = 450;
  static double width_08 = 8;
  static double width_10 = 10;
  static double width_12 = 12;
  static double width_16 = 16;
  static double width_18 = 18;
  static double width_20 = 20;
  static double width_30 = 30;
  static double width_32 = 32;
  static double width_38 = 38;
  static double width_40 = 40;
  static double width_45 = 45;
  static double width_48 = 48;
  static double width_60 = 60;
  static double width_80 = 80;
  static double width_90 = 90;
  static double width_150 = 150;
  static double width_155 = 155;
  static double width_120 = 120;

  static double width_100 = 100;
  static double width_160 = 160;
  static double width_180 = 180;
  static double width_190 = 190;
  static double width_200 = 200;
  static double width_207 = 207;
  static double width_230 = 230;
  static double width_280 = 280;
// ------------------------------------------------
  static const double width_04 = 4;
  static const double width_05 = 5;
  static const double width_06 = 6;

  static const double width_24 = 24;
  static const double width_96 = 96;
  static const double size_02 = 2;
  static const double size_03 = 3;
  static const double size_04 = 4;
  static const double size_05 = 5;
  static const double size_06 = 6;
  static const double size_07 = 7;
  static const double size_08 = 8;
  static const double size_10 = 10;
  static const double size_11 = 11;
  static const double size_12 = 12;
  static const double size_13 = 13;
  static const double size_14 = 14;
  static const double size_15 = 15;
  static const double size_16 = 16;
  static const double size_17 = 17;
  static const double size_18 = 18;
  static const double size_19 = 19;
  static const double size_20 = 20;
  static const double size_22 = 22;
  static const double size_23 = 23;
  static const double size_24 = 24;
  static const double size_25 = 25;
  static const double size_26 = 26;
  static const double size_28 = 28;
  static const double size_30 = 30;
  static const double size_32 = 32;
  static const double size_36 = 36;
  static const double size_40 = 40;
  static const double size_45 = 45;
  static const double size_47 = 47;
  static const double size_48 = 48;
  static const double size_50 = 50;
  static const double size_60 = 60;
  static const double size_70 = 70;
  static const double size_73 = 73;
  static const double size_80 = 80;
  static const double size_96 = 96;
  static const double size_104 = 104;
  static const double size_115 = 115;
  static const double size_120 = 120;
  static const double size_145 = 145;
  static const double size_148 = 148;
  static const double size_150 = 150;
  static const double size_170= 170;
  static const double size_600 = 600;
  static const double size_56 = 56;

  static const double size_100 = 100;

  getSize(isTab, size, {dynamic ratio}) {
    return isTab ? (size / (ratio ?? 2)) + size : size;
  }

  getwidth(isTab, size, {dynamic ratio}) {
    return isTab ? (size / (ratio ?? 2)) + size : size;
  }

  getheight(isTab, size, {dynamic ratio}) {
    return isTab ? (size / (ratio ?? 2)) + size : size;
  }

  // getWidth(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / (ratio ?? 2)) + size : size;
  // }
  //
  // getHeight(isTab, size, {dynamic ratio}) {
  //   return isTab ? (size / (ratio ?? 2)) + size : size;
  // }

  getIconSize(isTab, size, {dynamic ratio}) {
    return isTab ? (size / (ratio ?? 2)) + size : size;
  }

  getFontSize(isTab, size, {dynamic ratio}) {
    return isTab ? (size / (ratio ?? 2)) + size : size;
  }
}
