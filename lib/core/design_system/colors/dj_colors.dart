import 'package:flutter/material.dart';

class DjColors {
  static NeutralColors neutralColors = NeutralColors();
  static BrandColors brandColors = BrandColors();
  static SecondaryColors secondaryColors = SecondaryColors();
  static OtherColors otherColors = OtherColors();
}

class NeutralColors {
  NeutralColors();

  final defaultForeground = Color(0xFF111928);
  final defaultForeground1 = Color(0xFF1F2A37);
  final defaultForeground2 = Color(0xFF374151);
  final defaultForeground3 = Color(0xFF6B7280);
  final defaultForegroundDisabled = Color(0xFF9CA3AF);
  final defaultBorder = Color(0xFFD1D5DB);
  final defaultBackground1 = Color(0xFFFFFFFF);
  final defaultBackground2 = Color(0xFFF7F7F8);
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
  Yellow yellow = Yellow();
  Green green = Green();
}

class Red {
  final lightBackground = Color(0xFFFCF4F6);
  final foreground = Color(0xFFE40000);
  final lightBackground1 = Color(0xFFE40000);

  final darkBackground = Color(0xFF3E1F25);
  final darkBackground1 = Color(0xFFE52441);
  final darkForeground = Color(0xFFFF4E4E);
}

class Yellow {
  final lightBackground = Color(0xFFFBF6D9);
  final foreground = Color(0xFF835B00);
  final lightBackground1 = Color(0xFFEAA300);

  final darkBackground = Color(0xFF463100);
  final darkBackground1 = Color(0xFF151515);
  final darkForeground = Color(0xFFF2E384);
}

class Green {
  final lightBackground = Color(0xFFE7F2DA);
  final foreground = Color(0xFF237B4B);
  final lightBackground1 = Color(0xFF6BB700);

  final darkBackground = Color(0xFF0D2E0D);
  final darkBackground1 = Color(0xFF92C353);
  final darkForeground = Color(0xFF92C353);
}

class OtherColors {
  static MaterialColor purpleSwatch = MaterialColor(0xFF9E0064, {
    50: Color(0xFFEFDFEB),
    100: Color(0xFFEFDFEB),
    200: Color(0xFFC37EAF),
    300: Color(0xFFB04E90),
    400: Color(0xFFA6297A),
    500: Color(0xFF9E0064),
    600: Color(0xFF8F005E),
    700: Color(0xFF7A0055),
    800: Color(0xFF66014C),
    900: Color(0xFF42053B),
  });

  static MaterialColor tealSwatch = MaterialColor(0xFF3E7190, {
    50: Color(0xFFDBEFFF),
    100: Color(0xFFB8D6EA),
    200: Color(0xFF97B8D0),
    300: Color(0xFF749BB6),
    400: Color(0xFF5A86A3),
    500: Color(0xFF3E7190),
    600: Color(0xFF31637F),
    700: Color(0xFF235069),
    800: Color(0xFF143D53),
    900: Color(0xFF00293C),
  });

  static MaterialColor greenSwatch = MaterialColor(0xFF39C2E0, {
    50: Color(0xFFE2F8FC),
    100: Color(0xFFB7EDF8),
    200: Color(0xFF88E1F3),
    300: Color(0xFF5DD4EC),
    400: Color(0xFF43CBE6),
    500: Color(0xFF39C2E0),
    600: Color(0xFF34B1CC),
    700: Color(0xFF2D9CB2),
    800: Color(0xFF288899),
    900: Color(0xFF1E656D),
  });
}
