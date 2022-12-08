import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_support/overlay_support.dart';

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
    leading: LottieBuilder.asset(
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
    key: key,
    autoDismiss: autoDismiss,
    context: context,
  );
}

void showErrorNotice(
  String title,
  String message, {
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
    leading: LottieBuilder.asset(
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
    key: key,
    autoDismiss: autoDismiss,
    context: context,
  );
}

void showInfoNotice(
  String title,
  String message, {
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
    leading: LottieBuilder.asset(
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
    key: key,
    autoDismiss: autoDismiss,
    context: context,
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
