import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';
import 'package:hrms/services/local_storage/shared_pref_keys.dart';
import 'package:hrms/widgets/custom_text_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar(
//       {super.key,
//       required this.title,
//       this.isCenterTitle = false,
//       this.bgColor = AppColors.primary,
//       this.leading,
//       this.actions});
//
//   final String title;
//   final bool isCenterTitle;
//   final Color bgColor;
//   final Widget? leading;
//   final List<Widget>? actions;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         leading: leading,
//         // automaticallyImplyLeading: leading != null ? true : false,
//         actions: actions,
//         backgroundColor: bgColor,
//         centerTitle: isCenterTitle,
//         title: CustomTextWidget(
//           text: title,
//           textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
//               color: AppColors.white,
//               fontSize: AppSizes.fontSizeLg,
//               fontWeight: FontWeight.w600),
//         ));
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.isCenterTitle = false,
    this.bgColor = AppColors.primary,
    this.leading,
    this.actions,
    this.customerName = "",
  });

  final String title;
  final bool isCenterTitle;
  final Color bgColor;
  final Widget? leading;
  final List<Widget>? actions;
  final String customerName;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String userType = "";

  @override
  void initState() {
    super.initState();
    loadUserType();
  }

  void loadUserType() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userType = prefs.getString(SharedPrefKeys.userType) ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSalesPerson = userType == "salesPerson";

    return AppBar(
      leading: widget.leading,
      actions: widget.actions,
      backgroundColor: widget.bgColor,
      centerTitle: widget.isCenterTitle,
      title: isSalesPerson
          ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Selected Customer",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.white,
              fontSize: AppSizes.fontSizeLg,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 140,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                widget.customerName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      )
          : CustomTextWidget(
        text: widget.title,
        textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.white,
          fontSize: AppSizes.fontSizeLg,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
