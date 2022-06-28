import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

// Global error line
const String errorLine = 'Something went wrong! Please try again later...';
const String successLine = "Progress saved, Thanks for choosing us...";

TextTheme textThemeLight =
    GoogleFonts.openSansTextTheme(ThemeData.light().textTheme);

TextTheme textThemeDark =
    GoogleFonts.openSansTextTheme(ThemeData.dark().textTheme);

Future<bool> validateForm({
  RoundedLoadingButtonController? btnController,
  required GlobalKey<FormState> formKey,
}) async {
  if (!formKey.currentState!.validate()) {
    showErrorNotice("Form not valid", "Please fill all *fields");
    btnController?.error();
    Future.delayed(const Duration(seconds: 5), () {
      btnController?.reset();
    });
    return false;
  } else {
    formKey.currentState!.save();
    return true;
  }
}

void showSuccessNotice(String title, String message) {
  showSimpleNotification(
    Text(title),
    subtitle: Text(message),
    leading: LottieBuilder.asset(
      "assets/lottie/success.json",
      repeat: false,
    ),
    background: Colors.green,
    position: NotificationPosition.bottom,
    slideDismissDirection: DismissDirection.down,
    duration: const Duration(seconds: 4),
  );
}

void showErrorNotice(String title, String message) {
  showSimpleNotification(
    Text(title),
    subtitle: Text(message),
    leading: LottieBuilder.asset(
      "assets/lottie/error.json",
      repeat: false,
    ),
    background: Colors.red,
    position: NotificationPosition.bottom,
    slideDismissDirection: DismissDirection.down,
    duration: const Duration(seconds: 4),
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
