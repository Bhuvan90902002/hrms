import 'package:flutter/material.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';
import 'package:hrms/widgets/custom_text_widget.dart';

class CommonPickerOptionWidget extends StatelessWidget {
  const CommonPickerOptionWidget({
    super.key,
    required this.onPressed,
    required this.isDark,
    required this.isTab,
    this.isFiles,
  });

  final bool isDark;
  final bool isTab;
  final bool? isFiles;
  final Function(PickerType) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        pickerWidget(context, Icons.camera_alt, PickerType.camera),
        SizedBox(width: AppSizes.width_12),
        pickerWidget(context, Icons.photo_library, PickerType.gallery),
        SizedBox(width: AppSizes.width_12),
        if (isFiles ?? false) ...[
          pickerWidget(context, Icons.drive_file_move_sharp, PickerType.files),
          SizedBox(width: AppSizes.width_12),
        ]
      ],
    );
  }

  Widget pickerWidget(
      BuildContext context, IconData optionIcon, PickerType optionTitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextButton(
          padding: EdgeInsets.zero,
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.width_12)),
                ),
                padding:
                    WidgetStatePropertyAll(EdgeInsets.all(AppSizes.width_04)),
                backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent),
              ),
          height: AppSizes.height_48,
          width: AppSizes.height_48,
          onPressed: () {
            onPressed(optionTitle);
          },
          child: Icon(
            optionIcon,
            size: AppSizes.width_30,
            color: Colors.white,
          ),
        ),
        SizedBox(height: AppSizes.width_12),
        CustomTextWidget(
          text: optionTitle.name,
          textStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}

enum PickerType { camera, gallery, files }

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      color: color,
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: decoration,
      child: TextButton(
        style: style,
        onPressed: () => onPressed(),
        child: child ??
            CustomTextWidget(
                text: text ?? "Save",
                textOverflow: TextOverflow.ellipsis,
                textStyle:
                    textStyle ?? Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
