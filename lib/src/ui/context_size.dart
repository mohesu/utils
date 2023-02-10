import 'package:flutter/material.dart';

@Deprecated(
    'Use [context.size] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
Size size(context) {
  return MediaQuery.of(context).size;
}

@Deprecated(
    'Use [context.width] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double width(context) {
  return MediaQuery.of(context).size.width;
}

@Deprecated(
    'Use [context.height] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double height(context) {
  return MediaQuery.of(context).size.height;
}

@Deprecated(
    'Use [context.aspectRatio] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double aspectRatio(context) {
  return MediaQuery.of(context).size.aspectRatio;
}

@Deprecated(
    'Use [context.longestSide] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double longestSide(context) {
  return MediaQuery.of(context).size.longestSide;
}

@Deprecated(
    'Use [context.shortestSide] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double shortestSide(context) {
  return MediaQuery.of(context).size.shortestSide;
}

@Deprecated(
    'Use [context.devicePixelRatio] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double devicePixelRatio(context) {
  return MediaQuery.of(context).devicePixelRatio;
}

@Deprecated(
    'Use [context.textScaleFactor] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
double textScaleFactor(context) {
  return MediaQuery.of(context).textScaleFactor;
}

@Deprecated(
    'Use [context.orientation] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
Orientation orientation(context) {
  return MediaQuery.of(context).orientation;
}

@Deprecated(
    'Use [context.mediaQuery] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
MediaQueryData mediaQuery(context) {
  return MediaQuery.of(context);
}

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
