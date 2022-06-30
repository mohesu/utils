import 'package:flutter/material.dart';

InputDecoration inputDecoration(
    context, {
      required String hintText,
      required String labelText,
      int? hintMaxLines,
      String? prefixText,
      String? suffixText,
      IconData prefixIcon = Icons.edit_rounded,
      bool showPrefixIcon = true,
      Widget? icon,
      Widget? suffixIcon,
    }) {
  return InputDecoration(
    hintText: hintText,
    labelText: labelText,
    prefixText: prefixText,
    suffixText: suffixText,
    counter: const SizedBox(
      height: 8,
    ),
    prefixIcon: showPrefixIcon ? Icon(prefixIcon) : null,
    icon: icon,
    suffixIcon: suffixIcon,
    border: OutlineInputBorder(
      borderSide: const BorderSide(),
      borderRadius: BorderRadius.circular(18),
    ),
    hintMaxLines: hintMaxLines,
  );
}
