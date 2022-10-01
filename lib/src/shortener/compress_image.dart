import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'dart:typed_data';

Future<Uint8List?> compressImage(
  String path, {
  CompressFormat format = CompressFormat.jpeg,
  int quality = 50,
  bool autoCorrectionAngle = true,
  int inSampleSize = 1,
  bool keepExif = false,
  int minHeight = 1080,
  int minWidth = 1920,
  int numberOfRetries = 5,
  int rotate = 0,
}) {
  return FlutterImageCompress.compressWithFile(
    path,
    format: format,
    quality: quality,
    autoCorrectionAngle: autoCorrectionAngle,
    inSampleSize: inSampleSize,
    keepExif: keepExif,
    minHeight: minHeight,
    minWidth: minWidth,
    numberOfRetries: numberOfRetries,
    rotate: rotate,
  );
}
