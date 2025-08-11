import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key,
      required this.text,
      this.textStyle,
      this.textOverflow,
      this.maxLine,
      this.textAlign,
      this.onClick,
      this.height,
      this.width,
      this.softWrap = false});

  final String text;
  final TextStyle? textStyle;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? textAlign;
  final Function()? onClick;
  final double? height;
  final double? width;
  final bool softWrap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Text(
        text,
        style: textStyle ??
            Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontFamily: 'Manrope'),
        softWrap: softWrap,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: maxLine ?? 5,
        overflow: textOverflow ?? TextOverflow.ellipsis,
      ),
    );
  }
}
