import 'package:dj_pmi/core/design_system/colors/color_styles.dart';
import 'package:flutter/material.dart';

import 'dj_colors.dart';

class LightColors extends ColorStyles {
  @override
  Color get background1 => DjColors.neutralColors.defaultBackground1;

  @override
  Color get background2 => DjColors.neutralColors.defaultBackground2;

  @override
  Color get border => DjColors.neutralColors.defaultBorder;

  @override
  Color get foreground => DjColors.neutralColors.defaultForeground;

  @override
  Color get foreground1 => DjColors.neutralColors.defaultForeground1;

  @override
  Color get foreground2 => DjColors.neutralColors.defaultForeground2;

  @override
  Color get foreground3 => DjColors.neutralColors.defaultForeground3;

  @override
  Color get foregroundDisabled =>
      DjColors.neutralColors.defaultForegroundDisabled;

  @override
  Color get brandBackground => DjColors.brandColors.brandBackground;

  @override
  Color get brandForeground => DjColors.brandColors.brandLightForeground;

  @override
  Color get greenBackground => DjColors.secondaryColors.green.lightBackground;

  @override
  Color get greenBackground1 => DjColors.secondaryColors.green.lightBackground1;

  @override
  Color get greenForeground => DjColors.secondaryColors.green.foreground;

  @override
  Color get redBackground => DjColors.secondaryColors.red.lightBackground;

  @override
  Color get redBackground1 => DjColors.secondaryColors.red.lightBackground1;

  @override
  Color get redForeground => DjColors.secondaryColors.red.foreground;

  @override
  Color get yellowBackground => DjColors.secondaryColors.yellow.lightBackground;

  @override
  Color get yellowBackground1 =>
      DjColors.secondaryColors.yellow.lightBackground1;

  @override
  Color get yellowForeground => DjColors.secondaryColors.yellow.foreground;
}
