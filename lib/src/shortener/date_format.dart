import 'package:intl/intl.dart';

extension StringToDateTime on String {
  String toDateTime({String format = 'dd MMM yyyy | hh:mm aaa'}) => length > 0
      ? DateFormat(format).format(DateTime.tryParse(this)?.toLocal() ??
          DateTime.fromMillisecondsSinceEpoch(
            int.parse(this),
          ).toLocal())
      : this;
  String toTime() => length > 0
      ? DateFormat('hh:mm aaa').format(DateTime.tryParse(this)?.toLocal() ??
          DateTime.fromMillisecondsSinceEpoch(
            int.parse(this),
          ).toLocal())
      : this;
  String toDate() => length > 0
      ? DateFormat('dd MMM yyyy').format(DateTime.tryParse(this)?.toLocal() ??
          DateTime.fromMillisecondsSinceEpoch(
            int.parse(this),
          ).toLocal())
      : this;
}

extension IntToDateTime on int {
  String toDateTime({String format = 'dd MMM yyyy | hh:mm aaa'}) => this > 0
      ? DateFormat(format)
          .format(DateTime.fromMillisecondsSinceEpoch(this).toLocal())
      : toString();
  String toTime() => this > 0
      ? DateFormat('hh:mm aaa')
          .format(DateTime.fromMillisecondsSinceEpoch(this).toLocal())
      : toString();
  String toDate() => this > 0
      ? DateFormat('dd MMM yyyy')
          .format(DateTime.fromMillisecondsSinceEpoch(this).toLocal())
      : toString();
}

extension DateTimeToString on DateTime {
  String toDateTime({String format = 'dd MMM yyyy | hh:mm aaa'}) =>
      DateFormat(format).format(toLocal());
  String get toTime => DateFormat('hh:mm aaa').format(toLocal());
  String get toDate => DateFormat('dd MMM yyyy').format(toLocal());
}
