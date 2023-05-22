import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';
import '../resources/manager_text_theme_light.dart';

ThemeData managerLightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,

    /// MAIN COLORS APP
    primaryColor: ManagerColors.black,
    primaryColorLight: ManagerColors.white,

    // this for disabled button colors
    disabledColor: ManagerColors.buttonBorderColor,
    scaffoldBackgroundColor: ManagerColors.background,

    /// APP BAR THEME
    appBarTheme: AppBarTheme(
      color: ManagerColors.white,
      elevation: Constants.elevationAppBar,
      titleTextStyle: getBoldTextStyle(
        fontSize: ManagerFontSize.s14,
        color: ManagerColors.black,
      ),
    ),

    /// BUTTON THEME
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(),
      disabledColor: ManagerColors.buttonBorderColor,
    ),

    textTheme: ManagerTextThemeLight(),
  );
}
