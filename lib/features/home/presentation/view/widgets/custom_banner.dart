import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/core/resources/manager_assets.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return CarouselSlider(
        carouselController: controller.carouselController,
        options: CarouselOptions(
          enlargeCenterPage: true,
          scrollPhysics: const BouncingScrollPhysics(),
          viewportFraction: Constants.viewportFraction,
          autoPlay: true,
          height: ManagerHeight.h170,
          onPageChanged: (index, reason) {
            controller.change(index);
          },
        ),
        items: [
          Image.asset(
            ManagerAssets.carousel1,
            width: ManagerWidth.w320,
          ),
          Image.asset(
            ManagerAssets.carousel2,
            width: ManagerWidth.w320,
          ),
        ],
      );
    });
  }
}
