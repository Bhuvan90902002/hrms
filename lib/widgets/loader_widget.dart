import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: AppSizes.height_200,
      width: AppSizes.width_200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Image.asset(
          //   AppImages.appIcon,
          //   height: 50,
          //   width: 50,
          // ),
          const CircularProgressIndicator(
            color: AppColors.primary,
            strokeWidth: 2,
            strokeAlign: 20,
          ),
        ],
      ),
    ));
  }
}
