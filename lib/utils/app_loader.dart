import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/widgets/loader_widget.dart';

class AppLoader {
  AppLoader._privateConstrustor();

  static final AppLoader getInstance = AppLoader._privateConstrustor();

  bool isDialogShowing = false;

  factory AppLoader() {
    return getInstance;
  }

  showLoader(
    BuildContext context, {
    bool barrierDismissible = false,
  }) {
    isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return const LoaderWidget();
      },
    );
  }

  dismissLoader(BuildContext context) {
    if (isDialogShowing) {
      isDialogShowing = false;
      context.pop();
      // GoRouter
    }
  }
}
