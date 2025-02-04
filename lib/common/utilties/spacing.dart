import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsets horizontalPadding(double value) {
  return EdgeInsets.symmetric(horizontal: value.w);
}

EdgeInsets verticalPadding(double value) {
  return EdgeInsets.symmetric(vertical: value.w);
}

EdgeInsets allPadding(double value) {
  return EdgeInsets.symmetric(horizontal: value.w, vertical: value.w);
}
