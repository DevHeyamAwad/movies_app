import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainBanner extends StatelessWidget {
  MainBanner({
    super.key,
    required this.height,
  });

  double height;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return CarouselSlider(
        carouselController: controller.carouselController,
        options: CarouselOptions(
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          scrollPhysics: const BouncingScrollPhysics(),
          viewportFraction: Constants.mainViewportFraction,
          autoPlay: false,
          height: height,
          pageSnapping: false,
          disableCenter: true,
          onPageChanged: (index, reason) {
            controller.change(index);
          },
        ),
        items: controller.mainImages
            .map((item) => Container(
                  margin: EdgeInsets.only(
                    bottom: ManagerHeight.h10,
                    left: ManagerWidth.w10,
                    right: ManagerWidth.w10,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Constants.mainOffset,
                        color: ManagerColors.pinkShadowColor,
                        blurStyle: BlurStyle.normal,
                        blurRadius: Constants.mainBlurRadius,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                      ManagerRadius.r10,
                    ),
                    image: DecorationImage(
                      image: AssetImage(item.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
            .toList(),
      );
    });
  }
}
