import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';
import 'package:hrms/core/themes/widget_themes/app_spacing_style.dart';
import 'package:hrms/utils/app_decorations.dart';
import 'package:hrms/widgets/common_button.dart';
import 'package:hrms/widgets/common_icon_button.dart';
import 'package:hrms/widgets/common_text_view.dart';

class AppDialogs {
  AppDialogs._();

  static void openBottomSheet({required BuildContext context,
    required Widget widget,
    bool dismissable = true,
    bool dragHandle = true,
    required VoidCallback onCloseSheet,
    bool isScrollControlled = true,
    bool isCountrySelection = false,
    bool draggableDismiss = true,
    Color? backgroundColor}) {
    if (ModalRoute
        .of(context)
        ?.isCurrent != true) {
      return;
    }
    showModalBottomSheet(
      backgroundColor: backgroundColor ?? AppColors.lightContainer,
      isScrollControlled: isScrollControlled,
      isDismissible: dismissable,
      enableDrag: draggableDismiss,
      showDragHandle: dragHandle,
      context: context,
      builder: (context) {
        if (isCountrySelection) {
          return FractionallySizedBox(
            heightFactor: 0.9,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery
                    .of(context)
                    .viewInsets
                    .bottom,
              ),
              child: widget,
            ),
          );
        }

        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom,
          ),
          child: widget,
        );
      },
    ).whenComplete(() => onCloseSheet());
  }


  static openPhotoBottomSheet(context,
      {required Widget widget,
        bool dismissable = true,
        required VoidCallback onCloseSheet,
        bool isScrollControlled = true,
        Color? backgroundColor,
        Color?buttonColor,
        final isTab = false,
        final isDark = false,
        final EdgeInsetsGeometry? padding,
        final double? height,
        final String? title,
        final VoidCallback? onSubmit}) {
    showModalBottomSheet(
      backgroundColor: backgroundColor,
      isScrollControlled: isScrollControlled,
      isDismissible: dismissable,
      context: context,
      builder: (context) {
        return Padding(
            padding: MediaQuery
                .of(context)
                .viewInsets,
            child: Container(
              height: height,
              decoration: AppDecorations.buildBoxDecorationTwo(
                  decColor: isDark ? AppColors.primaryBGDark : AppColors
                      .primaryBG,
                  radius: AppSizes.size_24,
                  blurRadius: 14.9,
                  opacity: 0.35,
                  shadowColor: const Color(0xFF827D7D)),
              child: SingleChildScrollView(
                  child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: CommonIconButton(
                            icon: Icon(
                              Icons.close,
                              size: isTab ? AppSizes.size_36 : AppSizes.size_24,
                              color: AppColors.gradientTwo,
                            ),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppSpacingStyle.vGapMedium(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0),
                              child: TextView(
                                textAlign: TextAlign.center,
                                text: title ?? "",
                                textStyle: Theme
                                    .of(context)
                                    .textTheme
                                    .headlineSmall,
                              ),
                            ),
                            AppSpacingStyle.vGapSmall(),
                            Padding(
                              padding: padding ??
                                  AppSpacingStyle.paddingHorizantal(
                                      value: AppSizes.size_24),
                              child: widget,
                            ),
                            if (onSubmit != null) ...[
                              AppSpacingStyle.vGapLarge(value: AppSizes
                                  .size_36),
                              CommonButton(
                                color: buttonColor ?? AppColors.primary,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSizes.size_24),
                                onPressed: () {
                                  onSubmit();
                                },
                                text: "Submit",
                              ),
                            ],
                            AppSpacingStyle.vGapLarge(),
                          ],
                        ),
                      ]
                  )
              ),
            )
        );
      },
    ).whenComplete(() => onCloseSheet());
  }

  static openFilterBottomSheet(BuildContext context, {
    required Widget widget,
    bool dismissable = true,
    required VoidCallback onCloseSheet,
    bool isScrollControlled = true,
    Color? backgroundColor,
    Color? buttonColor,
    bool isTab = false,
    bool isDark = false,
    EdgeInsetsGeometry? padding,
    double? height,
    String? title,
    VoidCallback? onSubmit,
    VoidCallback? onClear
  }) {
    showModalBottomSheet(
      backgroundColor: AppColors.iconColor,
      isScrollControlled: true,
      isDismissible: dismissable,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height, // Limits height
          decoration: BoxDecoration(
            color: AppColors.iconColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.size_10, vertical: AppSizes.size_04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Ensures text and icon are on the same line
                  children: [
                    Expanded(
                      child:  TextView(
                        textAlign: TextAlign.start,
                        text: title ?? "",
                        textStyle: Theme
                            .of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: AppColors.white),
                      ),
                    ),
                    CommonIconButton(
                      icon: Icon(
                        Icons.close,
                        size: isTab ? AppSizes.size_36 : AppSizes.size_20,
                        color: AppColors.white,
                      ),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // AppSpacingStyle.vGapSmall(),
                      widget,
                    ],
                  ),
                ),
              ),
              Container( // Ensure button stays at the bottom
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (onClear != null) onClear();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: AppColors.primary,
                          side: BorderSide(color: AppColors.primary, width: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                          ),
                        ),
                        child: Text("Clear Filters"),
                      ),
                    ),
                    AppSpacingStyle.hGapLarge(),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (onSubmit != null) onSubmit();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                          ),
                        ),
                        child: Text("Apply Filters"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ).whenComplete(() => onCloseSheet());
  }
//
//
// static openFilterBottomSheet(
//     BuildContext context, {
//       required Widget widget,
//       bool dismissable = true,
//       required VoidCallback onCloseSheet,
//       bool isScrollControlled = true,
//       Color? backgroundColor,
//       Color? buttonColor,
//       bool isTab = false,
//       bool isDark = false,
//       EdgeInsetsGeometry? padding,
//       double? height,
//       String? title,
//       VoidCallback? onSubmit,
//     }) {
//   showModalBottomSheet(
//     backgroundColor: backgroundColor,
//     isScrollControlled: true, // Ensures full height can be used
//     isDismissible: dismissable,
//     context: context,
//     builder: (context) {
//       return Container(
//         constraints: BoxConstraints.expand(),
//         width: double.infinity,
//         decoration: AppDecorations.buildBoxDecorationTwo(
//           decColor: AppColors.iconColor,
//           radius: AppSizes.size_24,
//           blurRadius: 14.9,
//           opacity: 0.35,
//           shadowColor: const Color(0xFF827D7D),
//         ),
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: CommonIconButton(
//                   icon: Icon(
//                     Icons.close,
//                     size: isTab ? AppSizes.size_36 : AppSizes.size_24,
//                     color: AppColors.gradientTwo,
//                   ),
//                   onPressed: () {
//                     context.pop();
//                   },
//                 ),
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   AppSpacingStyle.vGapMedium(),
//                   TextView(
//                     textAlign: TextAlign.start,
//                     text: title ?? "",
//                     textStyle: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                   AppSpacingStyle.vGapSmall(),
//                   // Padding(
//                   //   padding: padding ??
//                   //       AppSpacingStyle.paddingHorizantal(
//                   //           value: AppSizes.size_24),
//                   //   child:
//                     widget,
//                   // ),
//                   if (onSubmit != null) ...[
//                     AppSpacingStyle.vGapLarge(value: AppSizes.size_36),
//                     CommonButton(
//                       color: buttonColor ?? AppColors.primary,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: AppSizes.size_24),
//                       onPressed: () {
//                         onSubmit();
//                       },
//                       text: "Submit",
//                     ),
//                   ],
//                   AppSpacingStyle.vGapLarge(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   ).whenComplete(() => onCloseSheet());
// }
//

}
