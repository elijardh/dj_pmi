import 'package:dj_pmi/core/design_system/colors/dark_colors.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  DarkColors get appColorsDark => DarkColors();

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;

  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;

  TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;

  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
}
