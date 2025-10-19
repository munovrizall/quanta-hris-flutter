import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';

class AppDropdownField<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final bool isExpanded;
  final String? Function(T?)? validator;
  final void Function(T?)? onChanged;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final Color? dropdownColor;
  final double? itemHeight;

  const AppDropdownField({
    super.key,
    required this.items,
    this.value,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.enabled = true,
    this.isExpanded = true,
    this.validator,
    this.onChanged,
    this.onTap,
    this.focusNode,
    this.dropdownColor,
    this.itemHeight = kMinInteractiveDimension,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      items: items,
      onChanged: enabled ? onChanged : null,
      onTap: onTap,
      validator: validator,
      focusNode: focusNode,
      isExpanded: isExpanded,
      dropdownColor: dropdownColor,
      itemHeight: itemHeight,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
