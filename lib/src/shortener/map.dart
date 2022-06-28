import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();

  static Future<bool> openGeoPoint(double latitude, double longitude) async {
    String url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(url)) {
      await launch(url);
    }
    if (kDebugMode) {
      print('Could not open the map.');
    }
    return false;
  }
}
