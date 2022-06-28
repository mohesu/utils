import 'package:flutter/material.dart';

InputBorder customInputBorder(double radius) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}
