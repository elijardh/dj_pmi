import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

NumberFormat _amountFormatter = NumberFormat();

extension NumExtension on num {
  String get toPrice {
    return _amountFormatter.format(this);
  }

  EdgeInsets get horizontal {
    return EdgeInsets.symmetric(horizontal: toDouble().w);
  }

  EdgeInsets get vertical {
    return EdgeInsets.symmetric(vertical: toDouble().w);
  }

  EdgeInsets get all {
    return EdgeInsets.symmetric(
      horizontal: toDouble().w,
      vertical: toDouble().w,
    );
  }
}


