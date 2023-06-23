import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:movies_app/core/resources/manager_fonts.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';

import '../../../../../config/constants.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/widegts/custom_text.dart';

class CategoryBanner extends StatelessWidget {
  CategoryBanner({
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
          viewportFraction: Constants.catViewportFraction,
          autoPlay: false,
          animateToClosest: false,
          height: height,
          pageSnapping: false,
          enableInfiniteScroll: false,
          padEnds: false,
          disableCenter: true,
          onPageChanged: (index, reason) {
            controller.change(index);
          },
        ),
        items: controller.nowImages.asMap().entries.map((entry) {
          int index = entry.key;
          String image = entry.value;
          String text = controller.nowText[index];
          return FittedBox(
            fit: BoxFit.fitHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Constants.offset,
                        color: ManagerColors.greyShadow,
                        blurRadius: Constants.catBlurRadius,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    image,
                    height: ManagerHeight.h210,
                  ),
                ),
                CustomText(
                  text: text,
                  fontSize: ManagerFontSize.s15,
                  colorText: ManagerColors.textCatColor,
                ),
              ],
            ),
          );
        }).toList(),
      );
    });
  }
}
