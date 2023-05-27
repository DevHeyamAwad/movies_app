import 'package:flutter/material.dart';

import 'manager_fonts.dart';

TextStyle _textStyle(
    {required String fontFamily,
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
    required TextDecoration decoration}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
  );
}

TextStyle getMediumTextStyle(
    {String fontFamily = ManagerFontFamily.fontFamily,
    required Color color,
    TextDecoration decoration = TextDecoration.none,
    required double fontSize}) {
  return TextStyle(
      fontFamily: fontFamily,
      fontWeight: ManagerFontWeight.medium,
      color: color,
      decoration: decoration,
      fontSize: fontSize);
}

TextStyle getRegularStyle(
    {String fontFamily = ManagerFontFamily.fontFamily,
    required Color color,
    TextDecoration decoration = TextDecoration.none,
    required double fontSize}) {
  return TextStyle(
      fontFamily: fontFamily,
      fontWeight: ManagerFontWeight.regular,
      color: color,
      decoration: decoration,
      fontSize: fontSize);
}

TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.bold,
    color: color,
    decoration: decoration,
  );
}
