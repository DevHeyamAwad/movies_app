import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:movies_app/core/resources/manager_strings.dart';

import '../../../../core/resources/manager_assets.dart';

class HomeController extends GetxController {
  late CarouselController carouselController;
  int selectedCategoryIndex = 0;
  var controllerPageView =
      PageController(viewportFraction: 1 / 2, initialPage: 1);
  int current = 0;
  final mainImages = [
    ManagerAssets.carousel1,
    ManagerAssets.carousel2,
  ];
  final nowImages = [
    ManagerAssets.nowImage1,
    ManagerAssets.nowImage2,
    ManagerAssets.nowImage3,
    ManagerAssets.nowImage4,
    ManagerAssets.nowImage5,
    ManagerAssets.nowImage6,
    ManagerAssets.nowImage7,
    ManagerAssets.nowImage8,
  ];
  final nowText = [
    ManagerStrings.justiceLeague,
    ManagerStrings.pampage,
    ManagerStrings.spiderMan,
    ManagerStrings.thorRagnarok,
    ManagerStrings.hotelTransylvania,
    ManagerStrings.untitledDeadpool,
    ManagerStrings.rememory,
    ManagerStrings.hostiles,
  ];
  final popularImages = [
    ManagerAssets.popularImage1,
    ManagerAssets.popularImage2,
    ManagerAssets.popularImage3,
    ManagerAssets.popularImage4,
    ManagerAssets.popularImage5,
  ];
  final secPopImages = [
    ManagerAssets.secpopImage1,
    ManagerAssets.secpopImage2,
    ManagerAssets.secpopImage3,
    ManagerAssets.popularImage1,
    ManagerAssets.popularImage4,
  ];
  final popText = [
    ManagerStrings.arrival,
    ManagerStrings.theDark,
    ManagerStrings.aGhost,
    ManagerStrings.wonder,
    ManagerStrings.mather,
  ];
  @override
  void onInit() {
    // TODO: implement onInit

    carouselController = CarouselController();
  }

  void change(index) {
    current = index;
    update();
  }
}
