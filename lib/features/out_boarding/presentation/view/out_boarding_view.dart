import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_fonts.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/widegts/scaffold_with_background_image.dart';
import '../../../../core/widgets/main_button.dart';
import '../controller/out_boarding_controller.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OutBoardingController>(
      builder: (controller) {
        return scaffoldWithBackGroundImage(
          image: controller.currentPage == 0
              ? ManagerAssets.outBoardingBackground1
              : controller.currentPage == 1
                  ? ManagerAssets.outBoardingBackground2
                  : ManagerAssets.outBoardingBackground3,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  children: [
                    ...controller.pageViewItems,
                  ],
                  onPageChanged: (index) {
                    controller.setCurrentPage(index);
                  },
                ),
              ),
              mainButton(
                height: ManagerHeight.h54,
                child: Text(
                  ManagerStrings.getStartedButton,
                  style: getRegularStyle(
                      color: ManagerColors.outBoradingTextColor,
                      fontSize: ManagerFontSize.s20),
                ),
                onPressed: () {
                  controller.getStart();
                },
              ),
              SizedBox(
                height: ManagerHeight.h40,
              )
            ],
          ),
        );
      },
    );
  }
}
