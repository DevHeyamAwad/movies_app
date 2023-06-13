import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/manager_fonts.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';

import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_styles.dart';

class OutBoardingItem extends StatelessWidget {
  OutBoardingItem({super.key, required this.text, required this.image});
  String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ManagerHeight.h444,
          width: double.infinity,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: getBoldTextStyle(
            color: ManagerColors.outBoradingTextColor,
            fontSize: ManagerFontSize.s36,
          ),
        ),
        SizedBox(
          height: ManagerHeight.h70,
        ),
        Image.asset(image),
      ],
    );
  }
}
