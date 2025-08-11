import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';
import 'package:hrms/widgets/commontextinput.dart';


class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final int? maxLength;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final String? initialValue;
  final bool readOnly;

  const CommonTextField({
    super.key,
    this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.maxLength,
    this.validator,
    this.onSaved,
    this.initialValue,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    // Use the provided controller, or initialize one with initialValue
    final TextEditingController effectiveController =
        controller ?? TextEditingController(text: initialValue);

    return TextInput(
      controller: effectiveController,
      fillColor: AppColors.white,
      inputType: inputType,
      inputAction: inputAction,
      hint: hint,
      hintStyle: TextStyle(
        color: AppColors.black,
        fontSize: AppSizes.size_14,
        fontWeight: FontWeight.w400,
      ),
      maxLength: maxLength,
      onEditingComplete: () {
        FocusScope.of(context).nextFocus();
      },
      validator: validator,
      onSaved: onSaved,
      readOnly: readOnly,
    );
  }
}
