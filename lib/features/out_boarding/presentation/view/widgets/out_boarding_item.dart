import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';

class OutBoardingItem extends StatelessWidget {
  OutBoardingItem({super.key, required this.text, required this.image});
  String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ManagerHeight.h444,
        ),
        Text(text),
        SizedBox(
          height: ManagerHeight.h142,
        ),
        Image.asset(image),
        SizedBox(
          height: ManagerHeight.h70,
        ),
      ],
    );
  }
}
