import 'dart:ui';
import 'color_styles.dart';
import 'dj_colors.dart';

class DarkColors extends ColorStyles {
  @override
  Color get border => DjColors.neutralColors.borderColor;
  @override
  Color get background => DjColors.neutralColors.defaultBackground;

  @override
  Color get foreground => DjColors.neutralColors.defaultForeground;

  @override
  Color get brandBackground => DjColors.brandColors.brandBackground;

  @override
  Color get brandForeground => DjColors.brandColors.brandDarkForeground;

  @override
  Color get greenBackground => DjColors.secondaryColors.green.greenBackground;

  @override
  Color get redBackground => DjColors.secondaryColors.red.redBackground;
}
