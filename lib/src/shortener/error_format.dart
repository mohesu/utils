extension StringToAppWriteError on String {
  @Deprecated('Use AppWrite Exception instead')
  String toAppWriteError() => length > 0 ? split(', ').last : this;
}
