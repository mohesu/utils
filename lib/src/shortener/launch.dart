import 'package:url_launcher/url_launcher_string.dart';

import '../other/functions.dart';
import 'logger.dart';

class LaunchUtils {
  LaunchUtils._();

  /// Opens the given [url] in the default browser.
  static launchUrl(url, {LaunchMode mode = LaunchMode.platformDefault}) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: mode,
      );
    } else {
      showErrorNotice("Error", "Could not launch the $url");
      throw 'Could not launch';
    }
  }

  /// Launch email app with given [email].
  static launchEmail(email,
      {LaunchMode mode = LaunchMode.platformDefault}) async {
    if (await canLaunchUrlString("mailto:$email")) {
      await launchUrlString(
        "mailto:$email",
        mode: mode,
      );
    } else {
      showErrorNotice("Error", "Could not launch the $email email");
      throw 'Could not launch';
    }
  }

  /// Launch the phone number.
  static launchPhone(telephoneNumber,
      {LaunchMode mode = LaunchMode.platformDefault}) async {
    String telephoneUrl = "tel:$telephoneNumber";
    if (await canLaunchUrlString(telephoneUrl)) {
      await launchUrlString(
        telephoneUrl,
        mode: mode,
      );
    } else {
      showErrorNotice("Error", "Could not launch the $telephoneNumber number");
      throw "Can't phone that number.";
    }
  }

  /// Launch Message app with the given [message].
  static launchMessage(String telephoneNumber,
      {String? message, LaunchMode mode = LaunchMode.platformDefault}) async {
    String telephoneUrl = "sms:$telephoneNumber?body=$message";
    if (await canLaunchUrlString(telephoneUrl)) {
      await launchUrlString(
        telephoneUrl,
        mode: mode,
      );
    } else {
      showErrorNotice("Error", "Could not launch the $telephoneNumber number");
      throw "Can't message that number.";
    }
  }

  /// Launch WhatsApp with the given [telephoneNumber] and [message].
  /// [message] is optional.
  /// [mode] is optional.
  /// [url] is optional, if not provided, it will use the [whatsappNumber] otherwise it will use the [url].
  static launchWhatsApp(
    String whatsAppNumber, {
    String message = "Hello",
    LaunchMode mode = LaunchMode.platformDefault,
    String? url,
  }) async {
    final String whatsAppUrl =
        "https://wa.me/$whatsAppNumber&text=${Uri.encodeFull(message)}";
    try {
      await canLaunchUrlString(url ?? whatsAppUrl)
          ? await launchUrlString(
              url ?? whatsAppUrl,
              mode: mode,
            )
          : showErrorNotice("Error", 'WhatsApp can\'t launch.');
    } catch (e) {
      logger.e(e.toString());
    }
  }

  /// Launch telegram app
  static launchTelegram(telegramChannel,
      {LaunchMode mode = LaunchMode.platformDefault}) async {
    final String telegramUrl = "https://t.me/$telegramChannel";
    try {
      await canLaunchUrlString(telegramUrl)
          ? await launchUrlString(
              telegramUrl,
              mode: mode,
            )
          : showErrorNotice("Error", 'Telegram can\'t launch.');
    } catch (e) {
      logger.e(e.toString());
    }
  }

  /// Launch GeoPoint app with the given [latitude] and [longitude].
  static launchGeoPoint(double latitude, double longitude,
      {LaunchMode mode = LaunchMode.platformDefault}) async {
    final String url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: mode,
      );
    } else {
      showErrorNotice("Error", "Could not launch the $url");
      throw 'Could not launch';
    }
  }
}
