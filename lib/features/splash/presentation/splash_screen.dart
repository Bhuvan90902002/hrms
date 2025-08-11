// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:gramomart/core/colors/app_colors.dart';
// import 'package:gramomart/router/app_router.dart';
// import 'package:gramomart/services/local_storage/shared_pref_controller.dart';
// import 'package:gramomart/services/local_storage/shared_pref_keys.dart';
// import 'package:gramomart/utils/app_images.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     init();
//   }

//   void init() async {
//     var isLoggedIn = await SharedPrefController.instance
//         .getBoolData(key: SharedPrefKeys.isLoggedIn);
//     bool storedIsSalesPerson = await SharedPrefController.instance
//             .getBoolData(key: SharedPrefKeys.isSalesPerson) ??
//         false;
//     Timer(
//       const Duration(seconds: 2),
//       () async {
//         if (isLoggedIn) {
//           if (storedIsSalesPerson) {
//             context.goNamed(AppRouter.salesDboardScreen);
//           } else {
//             context.goNamed(AppRouter.dashboardScreenName);
//           }
//         } else {
//           context.go(AppRouter.loginPath);
//         }
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           color: AppColors.primary,
//         ),
//         child:
//         Stack(
//           fit: StackFit.expand,
//           children: [
//             Image.asset(
//               AppImages.splashBg,
//               fit: BoxFit.cover,
//             ),
//             Center(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(AppImages.spalshLogo),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
