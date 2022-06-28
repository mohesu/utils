extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  String toInitials() => isNotEmpty
      ? trim().split(RegExp(' +')).map((s) => s[0]).take(2).join()
      : this;
}
