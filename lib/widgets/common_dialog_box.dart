import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class CommonDialogBox {
  CommonDialogBox._();

  static Future<bool?> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    required VoidCallback onClick,
    bool buttonTextEnable=false,
    String buttonText=''
  }) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        titlePadding: const EdgeInsets.only(top: 16, left: 20, right: 10),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        actionsPadding: const EdgeInsets.only(bottom: 16),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.pop();
               
                }),
          ],
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppSizes.fontSizeXLg,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Center(
            child: SizedBox(
              width: AppSizes.width_160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  onClick();
               //  context.pop();
                },
                child: Text(
                buttonTextEnable? buttonText: 'Send OTP',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
