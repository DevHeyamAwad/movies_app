import 'package:flutter/material.dart';
import 'package:movies_app/core/widegts/will_pop_scope.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_assets.dart';

Widget scaffoldWithBackGroundImage({
  required Widget child,
  Color backgroundColor = ManagerColors.background,
  String image = ManagerAssets.background,
}) {
  return willPopScope(
    child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    ),
  );
}
