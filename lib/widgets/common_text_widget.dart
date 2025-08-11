
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrms/core/colors/app_colors.dart' show AppColors;

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final bool isPasswordField;
  final Function(String? str) validator;
  final Function(String str)? onChange;
  final bool? isObscured;
  final VoidCallback? onToggleVisibility;
  final IconData? passwordVisibleIcon;
  final IconData? passwordHiddenIcon;
  final Color? borderColor;
  final Widget? iconsWidget;
  final bool isReadOnly;
  final TextInputType? inputType;
  final int maxLines;
  final Color? bgColor;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final double?cursorHeight;
  final double?cursorWidth;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  const CustomTextField({
    this.icon,
    required this.hintText,
    required this.controller,
    this.isObscured = false,
    this.onToggleVisibility,
    this.textStyle,
    this.isPasswordField = false,
    required this.validator,
    this.iconsWidget,
    this.passwordVisibleIcon = Icons.visibility,
    this.passwordHiddenIcon = Icons.visibility_off,
    super.key,
    this.borderColor,
    this.isReadOnly = false,
    this.inputType,
    this.maxLines = 1,
    this.bgColor,
    this.onChange, this.prefixIcon, this.hintStyle, this.cursorHeight, this.cursorWidth,this.suffixIcon,
    this.inputFormatters,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
   cursorHeight: cursorHeight,
      cursorWidth:cursorWidth?? 2.0, 
      controller: controller,
      validator: (value) => validator(value!),
      obscureText: isPasswordField && isObscured!,
      style: textStyle,
      readOnly: isReadOnly,
      maxLines: maxLines,
      keyboardType: inputType ?? TextInputType.text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChange,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        prefixIcon:prefixIcon ?? (icon!=null? Icon(icon, color: Colors.indigo):null),
        // icon != null ? Icon(icon, color: Colors.indigo) : null,
        hintText: hintText,
        hintStyle:hintStyle?? const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        filled: true,
        fillColor: bgColor ?? Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: borderColor ?? AppColors.buttonDisabled, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: borderColor ?? Colors.indigo)
          // borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red)
          // borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: borderColor ?? AppColors.buttonDisabled,width: 0.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red)),
        suffixIcon: isPasswordField
            ? IconButton(
          icon: Icon(
            isObscured! ? passwordHiddenIcon : passwordVisibleIcon,
            color: Colors.grey,
          ),
          onPressed: onToggleVisibility,
        )
            : iconsWidget,
      ),

    );
  }
}
