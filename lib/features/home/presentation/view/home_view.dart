import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/core/resources/manager_strings.dart';
import 'package:movies_app/core/widegts/will_pop_scope.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';

import '../../../../core/widegts/app_bar.dart';
import 'widgets/custom_banner.dart';

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
          return ListView(
            children: const [
              CustomBanner(),
            ],
          );
        }),
      ),
    );
  }
}
