
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/utils/app_images.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final double radius;
  final BoxFit fit;
  final String placeholder;
  final String? errorImage;

  final bool isNetwork;
  final Color? color;
  const CustomImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.radius = 0,
    this.fit = BoxFit.cover,
    this.placeholder = AppImages.appIcon,
    this.isNetwork = true,
    this.color,
    this.errorImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: isNetwork
            ? CachedNetworkImage(
          fit: fit,
          imageUrl: image,
          placeholder: (context, url) =>SizedBox(
            height: 20,
            width: 20,
          ),
          //CircularProgressIndicator(),
          errorWidget: (context, url, error) => errorImage != null
              ? Image.asset(errorImage!)
              : const Icon(
            Icons.error,
            color: AppColors.primary,
          ),
        )
            : Image.asset(
          errorBuilder: (context, error, stackTrace) => errorImage != null
              ? Image.asset(errorImage!)
              : const Icon(
            Icons.error,
            color: AppColors.primary,
          ),
          image,
          fit: fit,
          color: color,
        ),
      ),
    );
  }
}
