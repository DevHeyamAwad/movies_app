import 'package:flutter/material.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/core/resources/manager_styles.dart';

AppBar mainAppBar({IconData? icon, required String? appBarText}) {
  return AppBar(
    title: Text(
      appBarText.onNull(),
      style: getRegularTextStyle(
        color: ManagerColors.black,
        fontSize: ManagerSize.s24,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(
          right: Constants.paddingIconAppBar,
        ),
        child: Icon(
          icon,
          size: ManagerIconSize.s25,
        ),
      )
    ],
  );
}
