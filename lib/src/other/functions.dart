import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_notification/overlay_notification.dart';

/// Global notice lines
const String errorLine = 'Something went wrong! Please try again later...';
const String successLine = "Progress saved, Thanks for choosing us...";

TextTheme textThemeLight =
    GoogleFonts.openSansTextTheme(ThemeData.light().textTheme);

TextTheme textThemeDark =
    GoogleFonts.openSansTextTheme(ThemeData.dark().textTheme);

Future<bool> validateForm({
  LoadingButtonController? btnController,
  required GlobalKey<FormState> formKey,
}) async {
  if (!formKey.currentState!.validate()) {
    showErrorNotice("Form not valid", "Please fill all *fields");
    btnController?.error();
    Future.delayed(const Duration(seconds: 5), () {
      btnController?.reset();
    });
    return false;
  }
  formKey.currentState!.save();
  return true;
}

void showSuccessNotice(
  String title,
  String message, {
  Widget? leading,
  Color background = Colors.green,
  NotificationPosition position = NotificationPosition.top,
  DismissDirection slideDismissDirection = DismissDirection.up,
  Duration duration = const Duration(seconds: 4),
  Widget? trailing,
  EdgeInsetsGeometry? contentPadding,
  Color? foreground,
  double elevation = 16,
  Key? key,
  bool autoDismiss = true,
  BuildContext? context,
  TextStyle titleStyle = const TextStyle(color: Colors.white),
  TextStyle subtitleStyle = const TextStyle(color: Colors.white),
  Decoration? decoration,
  Decoration? foregroundDecoration,
  double? width,
  double? height,
  BoxConstraints? constraints,
  EdgeInsetsGeometry? margin,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
  Clip clipBehavior = Clip.none,
  MaterialType type = MaterialType.canvas,
  Color? shadowColor,
  Color? surfaceTintColor,
  TextStyle? textStyle,
  BorderRadiusGeometry? borderRadius,
  ShapeBorder? shape,
  bool borderOnForeground = true,
  Duration animationDuration = kThemeChangeDuration,
  EdgeInsetsGeometry? padding,
  Color? color,
  AlignmentGeometry? alignment,
}) {
  showSimpleNotification(
    Text(
      title,
      style: titleStyle,
    ),
    subtitle: Text(
      message,
      style: subtitleStyle,
    ),
    leading: leading ??
        LottieBuilder.asset(
          "assets/lottie/success.json",
          repeat: false,
        ),
    background: background,
    position: position,
    slideDismissDirection: slideDismissDirection,
    duration: duration,
    trailing: trailing,
    contentPadding: contentPadding,
    foreground: foreground,
    elevation: elevation,
    padding: padding,
    color: color,
    alignment: alignment,
    key: key,
    autoDismiss: autoDismiss,
    context: context,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    width: width,
    height: height,
    constraints: constraints,
    margin: margin,
    transform: transform,
    transformAlignment: transformAlignment,
    clipBehavior: clipBehavior,
    type: type,
    shadowColor: shadowColor,
    surfaceTintColor: surfaceTintColor,
    textStyle: textStyle,
    borderRadius: borderRadius,
    shape: shape,
    borderOnForeground: borderOnForeground,
    animationDuration: animationDuration,
  );
}

void showErrorNotice(
  String title,
  String message, {
  Widget? leading,
  Color background = Colors.red,
  NotificationPosition position = NotificationPosition.top,
  DismissDirection slideDismissDirection = DismissDirection.up,
  Duration duration = const Duration(seconds: 4),
  Widget? trailing,
  EdgeInsetsGeometry? contentPadding,
  Color? foreground,
  double elevation = 16,
  Key? key,
  bool autoDismiss = true,
  BuildContext? context,
  TextStyle titleStyle = const TextStyle(color: Colors.white),
  TextStyle subtitleStyle = const TextStyle(color: Colors.white),
  Decoration? decoration,
  Decoration? foregroundDecoration,
  double? width,
  double? height,
  BoxConstraints? constraints,
  EdgeInsetsGeometry? margin,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
  Clip clipBehavior = Clip.none,
  MaterialType type = MaterialType.canvas,
  Color? shadowColor,
  Color? surfaceTintColor,
  TextStyle? textStyle,
  BorderRadiusGeometry? borderRadius,
  ShapeBorder? shape,
  bool borderOnForeground = true,
  Duration animationDuration = kThemeChangeDuration,
  EdgeInsetsGeometry? padding,
  Color? color,
  AlignmentGeometry? alignment,
}) {
  showSimpleNotification(
    Text(
      title,
      style: titleStyle,
    ),
    subtitle: Text(
      message,
      style: subtitleStyle,
    ),
    leading: leading ??
        LottieBuilder.asset(
          "assets/lottie/error.json",
          repeat: false,
        ),
    background: background,
    position: position,
    slideDismissDirection: slideDismissDirection,
    duration: duration,
    trailing: trailing,
    contentPadding: contentPadding,
    foreground: foreground,
    elevation: elevation,
    padding: padding,
    color: color,
    alignment: alignment,
    key: key,
    autoDismiss: autoDismiss,
    context: context,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    width: width,
    height: height,
    constraints: constraints,
    margin: margin,
    transform: transform,
    transformAlignment: transformAlignment,
    clipBehavior: clipBehavior,
    type: type,
    shadowColor: shadowColor,
    surfaceTintColor: surfaceTintColor,
    textStyle: textStyle,
    borderRadius: borderRadius,
    shape: shape,
    borderOnForeground: borderOnForeground,
    animationDuration: animationDuration,
  );
}

void showInfoNotice(
  String title,
  String message, {
  Widget? leading,
  Color? background,
  NotificationPosition position = NotificationPosition.top,
  DismissDirection slideDismissDirection = DismissDirection.up,
  Duration duration = const Duration(seconds: 4),
  Widget? trailing,
  EdgeInsetsGeometry? contentPadding,
  Color? foreground,
  double elevation = 16,
  Key? key,
  bool autoDismiss = true,
  BuildContext? context,
  TextStyle titleStyle = const TextStyle(color: Colors.white),
  TextStyle subtitleStyle = const TextStyle(color: Colors.white),
  Decoration? decoration,
  Decoration? foregroundDecoration,
  double? width,
  double? height,
  BoxConstraints? constraints,
  EdgeInsetsGeometry? margin,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
  Clip clipBehavior = Clip.none,
  MaterialType type = MaterialType.canvas,
  Color? shadowColor,
  Color? surfaceTintColor,
  TextStyle? textStyle,
  BorderRadiusGeometry? borderRadius,
  ShapeBorder? shape,
  bool borderOnForeground = true,
  Duration animationDuration = kThemeChangeDuration,
  EdgeInsetsGeometry? padding,
  Color? color,
  AlignmentGeometry? alignment,
}) {
  showSimpleNotification(
    Text(
      title,
      style: titleStyle,
    ),
    subtitle: Text(
      message,
      style: subtitleStyle,
    ),
    leading: leading ??
        LottieBuilder.asset(
          "assets/lottie/info1.json",
          repeat: true,
        ),
    background: background ?? Colors.blue.shade300,
    position: position,
    slideDismissDirection: slideDismissDirection,
    duration: duration,
    trailing: trailing,
    contentPadding: contentPadding,
    foreground: foreground,
    elevation: elevation,
    padding: padding,
    color: color,
    alignment: alignment,
    key: key,
    autoDismiss: autoDismiss,
    context: context,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    width: width,
    height: height,
    constraints: constraints,
    margin: margin,
    transform: transform,
    transformAlignment: transformAlignment,
    clipBehavior: clipBehavior,
    type: type,
    shadowColor: shadowColor,
    surfaceTintColor: surfaceTintColor,
    textStyle: textStyle,
    borderRadius: borderRadius,
    shape: shape,
    borderOnForeground: borderOnForeground,
    animationDuration: animationDuration,
  );
}

Future<void> copyOnClipboard(String text) async {
  toast('Copied to clipboard:- $text');
  await Clipboard.setData(
    ClipboardData(
      text: text,
    ),
  );
}
