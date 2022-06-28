extension StringToAppWriteError on String {
  String toAppWriteError() => length > 0 ? split(', ').last : this;
}
