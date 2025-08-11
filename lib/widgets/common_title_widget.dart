
import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';


class CommonFormTitle extends StatelessWidget {
  const CommonFormTitle(
      {super.key,
        required this.title,
        this.isMandatory = true,
        this.style,
        this.maxLine,
        this.textAlign});
  final String title;
  final bool isMandatory;
  final TextStyle? style;
  final int? maxLine;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: textAlign,
      TextSpan(
          text: title,
          style: style ?? Theme.of(context).textTheme.bodyLarge,
          children: [
            if (isMandatory)
              TextSpan(
                text: " *",
                style: style ??
                    Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColors.black),
              )
          ]),
      maxLines: maxLine ?? 2,
    );
  }
}
