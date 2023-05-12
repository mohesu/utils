import 'package:flutter/material.dart';

extension ContextSize on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get longestSide => MediaQuery.of(this).size.longestSide;
  double get shortestSide => MediaQuery.of(this).size.shortestSide;
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  Orientation get orientation => MediaQuery.of(this).orientation;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
