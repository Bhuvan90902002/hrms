
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrms/core/colors/app_colors.dart';
class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.maxLine,
    this.controller,
    this.icon,
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.hint,
    this.suffixIcon,
    this.readOnly,
    this.onTap,
    this.onSaved,
    this.inputType,
    this.inputAction,
    this.obscureText,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.prefixIcon,
    this.style,
    this.textAlign,
    this.decoration,
    this.hintStyle,
    this.maxLength,
    this.fillColor,
    this.onTapIcon,
  });

  final String? initialValue;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final Icon? icon;
  final Widget? prefixIcon;

  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final FocusNode? focusNode;
  final IconButton? suffixIcon;
  final bool? readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onTapIcon;

  final Function(String?)? onSaved;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onFieldSubmitted;
  final Function()? onEditingComplete;
  final TextStyle? style;
  final TextAlign? textAlign;
  final InputDecoration? decoration;
  final TextStyle? hintStyle;
  final int? maxLength;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign ?? TextAlign.start,
      style: style ?? Theme.of(context).textTheme.bodyMedium,
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      controller: controller,
      textInputAction: inputAction,
      keyboardType: inputType,
      autovalidateMode: autoValidateMode,
      obscureText: obscureText ?? false,
      inputFormatters: inputFormatters ?? [],
      cursorColor: Colors.grey,
      initialValue: initialValue,
      maxLines: maxLine,
      maxLength: maxLength,
      decoration: decoration ??
          InputDecoration(
            counterText: "",
            hintStyle: hintStyle,
            hintText: hint,
            prefixIcon: icon ?? prefixIcon,
            fillColor: fillColor ?? AppColors.light,
            filled: fillColor != null ? true : false,
            suffixIcon: suffixIcon ,
          ),
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
    );
  }
}
