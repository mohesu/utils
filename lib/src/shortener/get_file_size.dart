import 'dart:math';
String getFileSizeString({required int bytes, int decimals = 0}) {
  if (bytes <= 0) return "0 Bytes";
  const suffixes = [" Bytes", "KB", "MB", "GB", "TB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + suffixes[i];
}
