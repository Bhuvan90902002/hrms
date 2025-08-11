import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';
import 'package:hrms/core/dimensions/app_sizes.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.dropDownList,
    required this.hint,
    required this.onValueChange,
    this.selectedValue,
    this.isError = false,
    this.width,
    this.showIcon = true,
    this.fillColor,
  });

  final List<String> dropDownList;
  final String hint;
  final Function(String?) onValueChange;
  final String? selectedValue;
  final bool isError;
  final double? width;
  final bool showIcon;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: fillColor ?? Colors.white,
        border: Border.all(
          color: !isError ? Colors.grey : Colors.red,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      height: AppSizes.size_48,
      width: width ?? double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton<String>(
        isExpanded: true,
        value: selectedValue, // Use the current selected value
        style: const TextStyle(color: Colors.black),
        items: dropDownList.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        underline: const SizedBox(),
        hint: Text(hint, style: TextStyle(color: AppColors.black)),
        icon: showIcon ? const Icon(Icons.arrow_drop_down) : const SizedBox(),
        onChanged: onValueChange, // Call the parent handler
      ),
    );
  }
}
