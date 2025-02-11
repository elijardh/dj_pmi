import 'package:flutter/material.dart';

class OtpViewArguement {
  final String? title;
  final VoidCallback onSuccess;

  OtpViewArguement({
    required this.onSuccess,
    this.title,
  });
}
