import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart' show AppSizes;

class StarRatingWidget extends StatefulWidget {
  final int starCount;
  final double rating;
  final Color? color;
  final bool showRating;
  final double ratingwidth;
  final bool isReadOnly; // Toggle between readonly & interactive
  final Function(double)? onRatingChanged;

  const StarRatingWidget(
      {super.key,
      this.starCount = 5,
      this.rating = 0.0,
      this.color,
      this.showRating = false,
      this.isReadOnly = true,
      this.onRatingChanged,
      this.ratingwidth = 20.00});

  @override
  State<StarRatingWidget> createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  late double currentRating;

  @override
  void initState() {
    super.initState();
    currentRating = widget.rating; // Initialize local rating state
  }

  // Method to build individual stars based on rating
  Widget buildStar(BuildContext context, int index, double ratingWidth) {
    Icon icon;

    if (index >= currentRating) {
      icon = Icon(
        Icons.star_border, // Empty star
        size: ratingWidth,
        color: AppColors.secondaryContainerGray,
      );
    } else {
      icon = Icon(
        Icons.star,
        size: ratingWidth,
        color: widget.color ?? AppColors.ratingPrimaryColor,
      );
    }

    return GestureDetector(
      onTap: widget.isReadOnly
          ? null
          : () {
              setState(() {
                currentRating = index + 1.0; // Update the rating locally
              });

              if (widget.onRatingChanged != null) {
                widget.onRatingChanged!(currentRating); // Notify parent widget
              }
            },
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            widget.starCount,
            (index) => buildStar(context, index, widget.ratingwidth),
          ),
        ),
        if (widget.showRating)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "$currentRating",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: AppSizes.size_14, fontWeight: FontWeight.w600),
            ),
          ),
      ],
    );
  }
}
