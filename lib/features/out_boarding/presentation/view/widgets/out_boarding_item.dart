import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/core/resources/manager_strings.dart';

class OutBoardingItem extends StatelessWidget {
  const OutBoardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ManagerHeight.h444,
        ),
        const Text(ManagerStrings.moviesApp),
        SizedBox(
          height: ManagerHeight.h142,
        )
      ],
    );
  }
}
