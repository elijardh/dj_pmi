import 'package:dj_pmi/core/design_system/colors/dark_colors.dart';
import 'package:dj_pmi/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

final _colorStyle = DarkColors();

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: _colorStyle.background,
  menuTheme: MenuThemeData(
    style: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(
        _colorStyle.background.withValues(alpha: 0.05),
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: _colorStyle.foreground,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: _colorStyle.background.withValues(alpha: 0.11),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
      color: _colorStyle.border,
    )),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
      color: _colorStyle.brandBackground,
    )),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorStyle.border,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: _colorStyle.border,
      ),
    ),
  ),
  primaryColorDark: _colorStyle.brandBackground,
  primaryColorLight: _colorStyle.brandBackground,
  primaryColor: _colorStyle.brandBackground,
  colorScheme: ColorScheme.dark(
    primary: _colorStyle.brandBackground,
    onPrimary: _colorStyle.foreground,
    surface: _colorStyle.background,
    tertiary: _colorStyle.foreground,
    secondary: _colorStyle.secondary,
    onSurface: _colorStyle.foreground,
  ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    buttonColor: _colorStyle.brandBackground,
    disabledColor: _colorStyle.border,
    colorScheme: ColorScheme.dark(
      onPrimary: _colorStyle.foreground,
    ),
  ),
  dialogTheme: DialogTheme(backgroundColor: _colorStyle.background),
  menuBarTheme: MenuBarThemeData(
      style: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(_colorStyle.background))),
  cardTheme: CardTheme(
    color: _colorStyle.background.withValues(alpha: 0.11),
  ),
  dialogBackgroundColor: _colorStyle.background.withValues(alpha: 0.11),
  disabledColor: _colorStyle.border,
  textTheme: textTheme.apply(
    bodyColor: _colorStyle.foreground,
    displayColor: _colorStyle.foreground,
  ),
);
