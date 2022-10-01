import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import 'compress_image.dart';

extension XFileExtension on XFile {
  /// Returns the file name without the extension.
  String get name {
    String fileName = path.replaceAll('\\', '/').split('/').last;
    if (fileName.isNotEmpty) return fileName;
    return path;
  }

  /// Returns the file extension.
  String toFileType() => path.isNotEmpty ? path.split('.').last : path;

  /// Compress Image with [CompressFormat] and [quality]
  Future<Uint8List?> toCompressImage({
    int quality = 50,
    bool autoCorrectionAngle = true,
    int inSampleSize = 1,
    bool keepExif = false,
    int minHeight = 1080,
    int minWidth = 1920,
    int numberOfRetries = 5,
    int rotate = 0,
  }) async {
    switch (toFileType()) {
      case "PNG":
      case "png":
        return await compressImage(
          path,
          format: CompressFormat.png,
          quality: quality,
          autoCorrectionAngle: autoCorrectionAngle,
          inSampleSize: inSampleSize,
          keepExif: keepExif,
          minHeight: minHeight,
          minWidth: minWidth,
          numberOfRetries: numberOfRetries,
          rotate: rotate,
        );
      case "JPEG":
      case "jpeg":
      case "jpg":
      case "JPG":
        return await compressImage(
          path,
          quality: quality,
          autoCorrectionAngle: autoCorrectionAngle,
          inSampleSize: inSampleSize,
          keepExif: keepExif,
          minHeight: minHeight,
          minWidth: minWidth,
          numberOfRetries: numberOfRetries,
          rotate: rotate,
        );
      case "WEBP":
      case "webp":
        return await compressImage(
          path,
          format: CompressFormat.webp,
          quality: quality,
          autoCorrectionAngle: autoCorrectionAngle,
          inSampleSize: inSampleSize,
          keepExif: keepExif,
          minHeight: minHeight,
          minWidth: minWidth,
          numberOfRetries: numberOfRetries,
          rotate: rotate,
        );
      case "heic":
      case "HEIC":
        return await compressImage(
          path,
          format: CompressFormat.heic,
          quality: quality,
          autoCorrectionAngle: autoCorrectionAngle,
          inSampleSize: inSampleSize,
          keepExif: keepExif,
          minHeight: minHeight,
          minWidth: minWidth,
          numberOfRetries: numberOfRetries,
          rotate: rotate,
        );
      default:
        return await compressImage(
          path,
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
  }
}
