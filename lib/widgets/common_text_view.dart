import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView(
      {super.key,
        required this.text,
        this.textStyle,
        this.textOverflow = TextOverflow.ellipsis,
        this.onClick,
        this.textAlign,
        this.maxLine = 2,
        this.height,
        this.softWrap,
        this.width});

  final String text;
  final TextStyle? textStyle;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? textAlign;
  final Function()? onClick;
  final double? height;
  final double? width;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Text(
        text,
        style: textStyle,
        softWrap: softWrap,
        textAlign: textAlign,
        maxLines: maxLine,
        overflow: textOverflow,
      ),
    );
  }
}
