import 'package:act_hub/core/resources/manager_fonts.dart';
import 'package:flutter/material.dart';

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

TextStyle getMediumStyle(
    {required String fontFamily,
    required Color color,
    TextDecoration decoration = TextDecoration.none,
    required double fontSize}) {
  return TextStyle(
      fontFamily: ManagerFontFamily.fontFamily,
      fontWeight: ManagerFontWeight.medium,
      color: color,
      decoration: decoration,
      fontSize: fontSize);
}

TextStyle getRegularStyle(
    {required String fontFamily,
    required Color color,
    TextDecoration decoration = TextDecoration.none,
    required double fontSize}) {
  return TextStyle(
      fontFamily: ManagerFontFamily.fontFamily,
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
