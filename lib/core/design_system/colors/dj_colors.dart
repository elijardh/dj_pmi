import 'package:flutter/material.dart';

class DjColors {
  static NeutralColors neutralColors = NeutralColors();
  static BrandColors brandColors = BrandColors();
  static SecondaryColors secondaryColors = SecondaryColors();
}

class NeutralColors {
  NeutralColors();
  final defaultForeground = Color(0xFFFFFFFF);
  final defaultBackground = Color(0xFF0E0E0E);
  final borderColor = Color(0xFF2D2D2D);
}

class BrandColors {
  BrandColors();
  final brandBackground = Color(0xFFFF6D37);
  final brandLightForeground = Color(0xFFFFFFFF);
  final brandDarkForeground = Color(0xFF000000);
}

class SecondaryColors {
  SecondaryColors();
  Red red = Red();
  Green green = Green();
}

class Red {
  final redBackground = Color(0xFFFF243E);
}

class Green {
  final greenBackground = Color(0xFF07FF95);
}
