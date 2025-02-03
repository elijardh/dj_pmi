import 'dart:ui';
import 'color_styles.dart';
import 'dj_colors.dart';

class DarkColors extends ColorStyles {
  @override
  Color get background1 => const Color(0xFF151515);

  @override
  Color get background2 => const Color(0xFF292929);

  @override
  Color get border => const Color(0xFF292929);

  @override
  Color get foreground => const Color(0xFFFAFAFA);

  @override
  Color get foreground1 => const Color(0xFFBEBEBE);

  @override
  Color get foreground2 => const Color(0xFFBEBEBE);

  @override
  Color get foreground3 => const Color(0xFFBEBEBE);

  @override
  Color get foregroundDisabled => const Color(0xFF828282);

  @override
  Color get brandBackground => DjColors.brandColors.brandBackground;

  @override
  Color get brandForeground => DjColors.brandColors.brandDarkForeground;

  @override
  Color get greenBackground => DjColors.secondaryColors.green.darkBackground;

  @override
  Color get greenBackground1 => DjColors.secondaryColors.green.darkBackground1;

  @override
  Color get greenForeground => DjColors.secondaryColors.green.darkForeground;

  @override
  Color get redBackground => DjColors.secondaryColors.red.darkBackground;

  @override
  Color get redBackground1 => DjColors.secondaryColors.red.darkBackground1;

  @override
  Color get redForeground => DjColors.secondaryColors.red.darkForeground;

  @override
  Color get yellowBackground => DjColors.secondaryColors.yellow.darkBackground;

  @override
  Color get yellowBackground1 =>
      DjColors.secondaryColors.yellow.darkBackground1;

  @override
  Color get yellowForeground => DjColors.secondaryColors.yellow.darkForeground;
}
