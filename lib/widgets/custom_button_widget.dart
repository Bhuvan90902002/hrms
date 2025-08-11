import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/widgets/custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onClick,
      required this.buttonText,
      this.borderRadius,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonColor,
      this.buttonTextColor,
      this.borderColor,
      this.buttonTextStyle});

  final VoidCallback onClick;
  final String buttonText;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color? borderColor;
  final TextStyle? buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onClick();
        },
        style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(buttonColor ?? AppColors.secondary),
            // padding: WidgetStatePropertyAll(EdgeInsets.all(AppSizes.size_12)),
            fixedSize: WidgetStatePropertyAll(Size(
                buttonWidth ?? MediaQuery.sizeOf(context).width,
                buttonHeight ?? 50)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(borderRadius ?? 50), // Border radius
              side: BorderSide(
                color: borderColor ??
                    buttonColor ??
                    AppColors.secondary, // Border color
                width: 1, // Border width
              ),
            ))),
        child: CustomTextWidget(
          text: buttonText,
          textStyle: buttonTextStyle ??
              Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: buttonTextColor ?? AppColors.white,
                  fontWeight: FontWeight.w600),
        ));
  }
}
