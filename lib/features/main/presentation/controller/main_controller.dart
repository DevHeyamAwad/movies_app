import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_strings.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../home/presentation/view/home_view.dart';

class MainController extends GetxController {
  PersistentTabController persistentTabController =
      PersistentTabController(initialIndex: 0);
  List<Widget> screens = [
    const HomeView(),
    Container(
      color: ManagerColors.pink,
    ),
    Container(
      color: ManagerColors.orange,
    ),
  ];

  List<PersistentBottomNavBarItem> bottomNavBarItems = [
    PersistentBottomNavBarItem(
      title: ManagerStrings.movies,
      icon: const ImageIcon(
        AssetImage(
          ManagerAssets.logo,
        ),
      ),
      activeColorPrimary: ManagerColors.pink,
      inactiveColorPrimary: ManagerColors.grey,
      iconSize: ManagerRadius.r26,
    ),
    PersistentBottomNavBarItem(
      title: ManagerStrings.tv,
      icon: const ImageIcon(
        AssetImage(
          ManagerAssets.tv,
        ),
      ),
      activeColorPrimary: ManagerColors.pink,
      inactiveColorPrimary: ManagerColors.grey,
      iconSize: ManagerRadius.r26,
    ),
    PersistentBottomNavBarItem(
      title: ManagerStrings.profile,
      icon: const ImageIcon(
        AssetImage(
          ManagerAssets.profile,
        ),
      ),
      activeColorPrimary: ManagerColors.orange,
      inactiveColorPrimary: ManagerColors.grey,
      iconSize: ManagerRadius.r26,
    ),
  ];
}
