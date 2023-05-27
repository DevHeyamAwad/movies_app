import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movies_app/core/resources/manager_assets.dart';
import 'package:movies_app/core/resources/manager_strings.dart';

import '../../../../core/widegts/scaffold_with_background_image.dart';
import '../view/widgets/out_boarding_item.dart';

class OutBoardingController extends GetxController {
  late PageController pageController;

  final List pageViewItems = [
    scaffoldWithBackGroundImage(
      image: ManagerAssets.outBoardingBackground1,
      child: OutBoardingItem(
        image: ManagerAssets.outBoardingImage1,
        text: ManagerStrings.outBoardingTitle1,
      ),
    ),
    scaffoldWithBackGroundImage(
      image: ManagerAssets.outBoardingBackground2,
      child: OutBoardingItem(
        image: ManagerAssets.outBoardingImage2,
        text: ManagerStrings.outBoardingTitle2,
      ),
    ),
    scaffoldWithBackGroundImage(
      image: ManagerAssets.outBoardingBackground3,
      child: OutBoardingItem(
        image: ManagerAssets.outBoardingImage3,
        text: ManagerStrings.outBoardingTitle3,
      ),
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    pageController.dispose();
    super.onClose();
  }
}
