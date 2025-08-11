import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';
import 'package:hrms/utils/app_decorations.dart';

class CommonRadioButton extends StatelessWidget {
  const CommonRadioButton(
      {super.key, required this.onClick, required this.isSelected});

  final Function() onClick;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        height: AppSizes.height_24,
        width: AppSizes.width_24,
        decoration: AppDecorations.decorationwithShape(
            borderColor: AppColors.blue,
            borderWidth: 2,
            backgroundColor: AppColors.white,
            shape: BoxShape.circle),
        alignment: Alignment.center,
        child: Container(
          height: AppSizes.height_16,
          width: AppSizes.width_16,
          decoration: AppDecorations.decorationwithShape(
              backgroundColor: isSelected ? AppColors.blue : AppColors.white,
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
