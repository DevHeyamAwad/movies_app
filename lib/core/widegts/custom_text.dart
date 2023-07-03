import 'package:flutter/material.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/core/resources/manager_styles.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    required this.colorText,
    required this.fontSize,
  });

  final String text;
  final double fontSize;
  Color colorText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ManagerWidth.w12,
      ),
      child: Text(
        text,
        maxLines: Constants.maxLines,
        textAlign: TextAlign.center,
        softWrap: true,
        style: getRegularTextStyle(
          fontSize: fontSize,
          color: colorText,
        ),
      ),
    );
  }
}
