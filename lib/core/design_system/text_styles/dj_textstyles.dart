import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String _fontName = "Inter Tight";

class DjTextStyles {
  static final displayTitle = TextStyle(
    fontFamily: _fontName,
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
  );

  static final headLine = TextStyle(
    fontFamily: _fontName,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static final bodySmall = TextStyle(
    fontFamily: _fontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final bodyMedium = TextStyle(
    fontFamily: _fontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final bodyLarge = TextStyle(
    fontFamily: _fontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
}
