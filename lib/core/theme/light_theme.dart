import 'package:dj_pmi/core/design_system/colors/light_colors.dart';
import 'package:dj_pmi/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

final _colorStyle = LightColors();

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: _colorStyle.background1,
  menuTheme: MenuThemeData(
      style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(_colorStyle.background2))),
  iconTheme: IconThemeData(color: _colorStyle.foreground),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: _colorStyle.background2,
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
      color: _colorStyle.foregroundDisabled,
    )),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorStyle.border,
      ),
    ),
  ),
  primaryColor: _colorStyle.brandBackground,
  colorScheme: ColorScheme.light(
    onPrimary: _colorStyle.brandForeground,
    surface: _colorStyle.background1,
    tertiary: _colorStyle.foreground2,
    secondary: _colorStyle.foreground1,
    onSurface: _colorStyle.foreground,
  ),
  buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor: _colorStyle.brandBackground,
      disabledColor: _colorStyle.foregroundDisabled,
      colorScheme: ColorScheme.light(
        onPrimary: _colorStyle.foreground,
      )),
  dialogTheme: DialogTheme(backgroundColor: _colorStyle.background2),
  cardTheme: CardTheme(color: _colorStyle.background1),
  dialogBackgroundColor: _colorStyle.background2,
  disabledColor: _colorStyle.foregroundDisabled,
  menuBarTheme: MenuBarThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(_colorStyle.background2),
    ),
  ),
  textTheme: textTheme.apply(
    bodyColor: _colorStyle.foreground,
    displayColor: _colorStyle.foreground,
  ),
);
