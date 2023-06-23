import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_fonts.dart';
import 'package:movies_app/core/resources/manager_strings.dart';
import 'package:movies_app/core/widegts/custom_text.dart';
import 'package:movies_app/core/widegts/will_pop_scope.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';
import 'package:movies_app/features/home/presentation/view/widgets/category_banner.dart';
import 'package:movies_app/features/home/presentation/view/widgets/popular_banner.dart';

import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/widegts/app_bar.dart';
import 'widgets/main_banner.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        appBar: mainAppBar(
          appBarText: ManagerStrings.movies,
          icon: Icons.search,
        ),
        body: GetBuilder<HomeController>(builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainBanner(
                  height: ManagerHeight.h200,
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                CustomText(
                  text: ManagerStrings.now,
                  fontSize: ManagerFontSize.s18,
                  colorText: ManagerColors.textCatColor,
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                CategoryBanner(
                  height: ManagerHeight.h260,
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                CustomText(
                  text: ManagerStrings.popular,
                  fontSize: ManagerFontSize.s18,
                  colorText: ManagerColors.textCatColor,
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
                popularBanner(
                  height: ManagerHeight.h260,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
