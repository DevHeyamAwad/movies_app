import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../extensions/extensions.dart';
import '../resources/manager_sizes.dart';

Widget mainButton({
  required Widget child,
  void Function()? onPressed,
  ShapeBorder? shapeBorder,
  Color? color,
  Color? borderColor,
  double? minWidth,
  double? height,
  double? elevation,
}) {
  return MaterialButton(
    onPressed: onPressed.onNull(),
    shape: shapeBorder ??
        RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor.onNull(),
          ),
          borderRadius: BorderRadius.circular(
            ManagerRadius.r27,
          ),
        ),
    color: color.onNull(),
    minWidth: ManagerWidth.w192,
    height: ManagerHeight.h54,
    elevation: elevation ?? Constants.elevationButton,
    child: child,
  );
}
