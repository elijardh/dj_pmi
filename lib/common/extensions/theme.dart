import 'package:dj_pmi/core/design_system/colors/color_styles.dart';
import 'package:dj_pmi/core/design_system/colors/dark_colors.dart';
import 'package:dj_pmi/core/design_system/colors/light_colors.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  DarkColors get appColorsDark => DarkColors();

  LightColors get appColorsLight => LightColors();

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  /// get color based on theme
  ColorStyles get appColors {
    return isDarkMode ? appColorsDark : appColorsLight;
  }
}
