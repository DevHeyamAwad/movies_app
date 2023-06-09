import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../controller/main_controller.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return PersistentTabView(
          decoration: const NavBarDecoration(
              boxShadow: [BoxShadow(color: ManagerColors.black)]),
          context,
          controller: controller.persistentTabController,
          backgroundColor: Colors.white,
          navBarStyle: NavBarStyle.style2,
          confineInSafeArea: true,
          navBarHeight: ManagerHeight.h65,
          screens: controller.screens,
          items: controller.bottomNavBarItems,
        );
      },
    );
  }
}
