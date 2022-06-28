import 'package:flutter/material.dart';

InputDecoration inputDecoration(
  context, {
  required String hintText,
  required String labelText,
  int? hintMaxLines,
  String? prefixText,
  String? suffixText,
  IconData iconData = Icons.edit_rounded,
  bool showIcon = true,
  Widget? suffixIcon,
  Widget? suffix,
}) {
  return InputDecoration(
    hintText: hintText,
    labelText: labelText,
    prefixText: prefixText,
    suffixText: suffixText,
    counter: const SizedBox(
      height: 8,
    ),
    prefixIcon: showIcon ? Icon(iconData) : null,
    border: OutlineInputBorder(
      borderSide: const BorderSide(),
      borderRadius: BorderRadius.circular(18),
    ),
    hintMaxLines: hintMaxLines,
    suffixIcon: suffixIcon,
    suffix: suffix,
  );
}
