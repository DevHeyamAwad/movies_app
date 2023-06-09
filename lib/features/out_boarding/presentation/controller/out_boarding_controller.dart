import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/config/dependency_injection.dart';
import 'package:movies_app/core/resources/manager_assets.dart';
import 'package:movies_app/core/resources/manager_strings.dart';
import 'package:movies_app/core/storage/local/app_settings_shared_preferances.dart';

import '../../../../routes/routes.dart';
import '../view/widgets/out_boarding_item.dart';

class OutBoardingController extends GetxController {
  late PageController pageController;
  static const firstPage = 0;
  static const lastPage = 2;
  int currentPage = firstPage;
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
      instance<AppSettingsSharedPreferences>();

  final List pageViewItems = [
    OutBoardingItem(
      image: ManagerAssets.outBoardingImage1,
      text: ManagerStrings.outBoardingTitle1,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingImage2,
      text: ManagerStrings.outBoardingTitle2,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingImage3,
      text: ManagerStrings.outBoardingTitle3,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void animatedToPage({required int index}) {
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: Constants.outBoardingDurationTime),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  bool isLastedPage() {
    return currentPage < lastPage;
  }

  void nextPage() {
    if (isLastedPage()) {
      animatedToPage(index: ++currentPage);
      update();
    }
  }

  bool isNotLastedPage() {
    return currentPage > lastPage;
  }

  void previousPage() {
    if (isNotLastedPage()) {
      animatedToPage(index: --currentPage);
      update();
    }
  }

  Future<void> setCurrentPage(int index) async {
    await _appSettingsSharedPreferences.setOutBoardingViewed();
    currentPage = index;
    update();
  }

  Future<void> getStart() async {
    await _appSettingsSharedPreferences.setOutBoardingViewed();
    Get.offAllNamed(Routes.mainView);
  }

  void skipPage() {
    pageController.animateToPage(
      lastPage,
      duration: const Duration(seconds: Constants.outBoardingDurationTime),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    currentPage = lastPage;
    update();
  }
}
