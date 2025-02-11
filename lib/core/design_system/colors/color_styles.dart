import 'package:flutter/material.dart';

abstract class ColorStyles {
  Color get background;
  Color get foreground;
  Color get border;
  Color get highContrastForeground;
  Color get midContrastForeground;
  Color get lowContrastForeground;
  Color get secondary;

  //Brand
  Color get brandBackground;
  Color get brandForeground;

  //Red
  Color get redBackground;

  //Green
  Color get greenBackground;
}
