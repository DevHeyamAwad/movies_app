import 'package:flutter/material.dart';

import '../resources/manager_colors.dart';

ThemeData managerDarkThemeData() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: ManagerColors.pinkShadowColor,
  );
}
