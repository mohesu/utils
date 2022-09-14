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
