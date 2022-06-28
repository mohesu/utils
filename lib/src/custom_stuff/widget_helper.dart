import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Size? getWidgetSize(GlobalKey key) {
  final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
  return renderBox?.size;
}
