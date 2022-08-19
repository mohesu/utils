
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../other/functions.dart';
import 'logger.dart';

class LaunchUtils {
  LaunchUtils._();

  static launchUrl(url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      showErrorNotice("Error", "Could not launch the $url");
      throw 'Could not launch';
    }
  }

  static launchEmail(email) async {
    if (await canLaunchUrlString("mailto:$email")) {
      await launchUrlString("mailto:$email");
    } else {
      showErrorNotice("Error", "Could not launch the $email email");
      throw 'Could not launch';
    }
  }

  static launchPhone(telephoneNumber) async {
    String telephoneUrl = "tel:$telephoneNumber";
    if (await canLaunchUrlString(telephoneUrl)) {
      await launchUrlString(telephoneUrl);
    } else {
      showErrorNotice("Error", "Could not launch the $telephoneNumber number");
      throw "Can't phone that number.";
    }
  }
  
  static launchMessage(String telephoneNumber, {String? message}) async {
    String telephoneUrl = "sms:$telephoneNumber?body=$message";
    if (await canLaunchUrlString(telephoneUrl)) {
      await launchUrlString(telephoneUrl);
    } else {
      showErrorNotice("Error", "Could not launch the $telephoneNumber number");
      throw "Can't message that number.";
    }
  }

  static launchWhatsApp(String whatsAppNumber, {String message = "Hello"}) async {
    final String whatsAppUrl = Platform.isIOS
        ? "whatsapp://wa.me/91$whatsAppNumber/?text=${Uri.encodeFull(message)}"
        : "whatsapp://send?phone=91$whatsAppNumber&text=${Uri.encodeFull(message)}";
    try {
      await canLaunchUrlString(whatsAppUrl)
          ? await launchUrlString(whatsAppUrl)
          : showErrorNotice("Error", 'WhatsApp can\'t launch.');
    } catch (e) {
      logger.e(e.toString());
    }
  }

  // launch telegram channel
  static launchTelegram(telegramChannel) async {
    final String telegramUrl = "https://t.me/$telegramChannel";
    try {
      await canLaunchUrlString(telegramUrl)
          ? await launchUrlString(telegramUrl)
          : showErrorNotice("Error", 'Telegram can\'t launch.');
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
