import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/widgets/custom_text_widget.dart';
class CommonTwoText extends StatelessWidget {
  const CommonTwoText(
      {super.key,
      required this.textOne,
      required this.textTwo,
      this.styleOne,
      this.styleTwo,
      this.flexOne,
      this.flexTwo, this.maxlineOne, this.maxlineTwo});
  final String textOne;
  final String textTwo;
  final TextStyle? styleOne;
  final TextStyle? styleTwo;
  final int? flexOne;
  final int? flexTwo;
  final int? maxlineOne;
  final int? maxlineTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: flexOne ?? 1,
          child: CustomTextWidget(
            maxLine: maxlineOne,
            text: textOne,
            textStyle: styleOne ?? Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textGrey),
          ),
        ),
        Expanded(
          flex: flexTwo ?? 1,
          child: CustomTextWidget(
            maxLine: maxlineTwo,

            textAlign: TextAlign.end,
            text: textTwo,
            textStyle: styleTwo ?? Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
