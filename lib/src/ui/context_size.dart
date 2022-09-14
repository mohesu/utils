import 'package:flutter/material.dart';

Size size(context) {
  return MediaQuery.of(context).size;
}

double width(context) {
  return MediaQuery.of(context).size.width;
}

double height(context) {
  return MediaQuery.of(context).size.height;
}

double aspectRatio(context) {
  return MediaQuery.of(context).size.aspectRatio;
}

double longestSide(context) {
  return MediaQuery.of(context).size.longestSide;
}

double shortestSide(context) {
  return MediaQuery.of(context).size.shortestSide;
}

double devicePixelRatio(context) {
  return MediaQuery.of(context).devicePixelRatio;
}

double textScaleFactor(context) {
  return MediaQuery.of(context).textScaleFactor;
}

Orientation orientation(context) {
  return MediaQuery.of(context).orientation;
}

MediaQueryData mediaQuery(context) {
  return MediaQuery.of(context);
}
