import 'package:flutter/Material.dart';
import 'package:hrms/core/colors/app_colors.dart';

import 'custom_text_widget.dart';

class CommonTextOrder extends StatelessWidget {
  const CommonTextOrder({
    super.key,
    required this.textOne,
    required this.textTwo,
    this.styleOne,
    this.styleTwo,
    this.maxlineOne,
    this.maxlineTwo,
  });

  final String textOne;
  final String textTwo;
  final TextStyle? styleOne;
  final TextStyle? styleTwo;
  final int? maxlineOne;
  final int? maxlineTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100, // Fixed width for alignment
            child: CustomTextWidget(
              maxLine: maxlineOne,
              text: textOne,
              textStyle: styleOne ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.textGreyColor),
            ),
          ),
          Text(
            ":  ", // Fixed colon for spacing
            style: styleOne ??
                Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.textGreyColor),
          ),
          Expanded(
            child: CustomTextWidget(
              maxLine: maxlineTwo,
              textAlign: TextAlign.start,
              text: textTwo,
              textStyle: styleTwo ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
