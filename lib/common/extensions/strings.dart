import 'package:intl/intl.dart';

NumberFormat _amountFormatter = NumberFormat();

extension NumExtension on num {
  String get toPrice {
    return _amountFormatter.format(this);
  }
}
