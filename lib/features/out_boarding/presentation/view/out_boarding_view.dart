import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/out_boarding_controller.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(
      builder: (controller) {
        return PageView(
          controller: controller.pageController,
          children: [...controller.pageViewItems],
          onPageChanged: (index) {
            controller.setCurrentPage(index);
          },
        );
      },
    );
  }
}
