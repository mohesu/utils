import 'package:flutter/material.dart';

Widget customDivider({
  double? height,
  double? thickness,
  double? indent = 30,
  double? endIndent = 30,
  Color? color,
}) {
  return Divider(
    indent: indent,
    endIndent: endIndent,
    color: color,
    height: height,
    thickness: thickness,
  );
}
