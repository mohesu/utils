import 'package:flutter/material.dart';

@Deprecated(
    'Use [context.headline1] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine1(context) {
  return Theme.of(context).textTheme.headline1;
}

@Deprecated(
    'Use [context.headline2] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine2(context) {
  return Theme.of(context).textTheme.headline2;
}

@Deprecated(
    'Use [context.headline3] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine3(context) {
  return Theme.of(context).textTheme.headline3;
}

@Deprecated(
    'Use [context.headline4] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine4(context) {
  return Theme.of(context).textTheme.headline4;
}

@Deprecated(
    'Use [context.headline5] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine5(context) {
  return Theme.of(context).textTheme.headline5;
}

@Deprecated(
    'Use [context.headLine6] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? headLine6(context) {
  return Theme.of(context).textTheme.headline6;
}

@Deprecated(
    'Use [context.subtitle1] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? subtitle1(context) {
  return Theme.of(context).textTheme.subtitle1;
}

@Deprecated(
    'Use [context.subtitle2] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? subtitle2(context) {
  return Theme.of(context).textTheme.subtitle2;
}

@Deprecated(
    'Use [context.bodyText1] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? bodyText1(context) {
  return Theme.of(context).textTheme.bodyText1;
}

@Deprecated(
    'Use [context.bodyText2] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? bodyText2(context) {
  return Theme.of(context).textTheme.bodyText2;
}

@Deprecated(
    'Use [context.button] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? button(context) {
  return Theme.of(context).textTheme.button;
}

@Deprecated(
    'Use [context.caption] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? caption(context) {
  return Theme.of(context).textTheme.caption;
}

@Deprecated(
    'Use [context.overline] instead. This will be removed in the next major version.'
    'This feature was deprecated after v0.0.13+2')
TextStyle? overline(context) {
  return Theme.of(context).textTheme.overline;
}

extension ContextTextStyle on BuildContext {
  TextStyle? get headline1 => Theme.of(this).textTheme.headline1;
  TextStyle? get headline2 => Theme.of(this).textTheme.headline2;
  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;
  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;
  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;
  TextStyle? get headline6 => Theme.of(this).textTheme.headline6;
  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;
  TextStyle? get subtitle2 => Theme.of(this).textTheme.subtitle2;
  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;
  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;
  TextStyle? get button => Theme.of(this).textTheme.button;
  TextStyle? get caption => Theme.of(this).textTheme.caption;
  TextStyle? get overline => Theme.of(this).textTheme.overline;
}
