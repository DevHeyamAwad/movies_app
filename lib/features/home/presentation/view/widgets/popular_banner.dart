import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movies_app/config/constants.dart';
import 'package:movies_app/core/resources/manager_fonts.dart';
import 'package:movies_app/core/resources/manager_sizes.dart';
import 'package:movies_app/core/resources/manager_styles.dart';
import 'package:movies_app/features/home/presentation/controller/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../core/resources/manager_colors.dart';

class popularBanner extends StatelessWidget {
  popularBanner({
    super.key,
    required this.height,
  });

  double height;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Column(children: [
        CarouselSlider(
          carouselController: controller.carouselController,
          options: CarouselOptions(
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: Constants.popViewportFraction,
            autoPlay: false,
            height: height,
            pageSnapping: false,
            padEnds: false,
            enableInfiniteScroll: false,
            disableCenter: true,
            onPageChanged: (index, reason) {
              controller.change(index);
            },
          ),
          items: controller.popularImages.asMap().entries.map(
            (item) {
              int index = item.key;
              String image = item.value;
              String text = controller.popText[index];
              return Container(
                margin: EdgeInsets.only(
                  bottom: ManagerHeight.h10,
                  left: ManagerWidth.w10,
                  right: ManagerWidth.w10,
                ),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Constants.offset,
                      color: ManagerColors.greyShadow,
                      blurRadius: Constants.catBlurRadius,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: ManagerWidth.w10,
                        bottom: ManagerHeight.h10,
                      ),
                      child: Text(
                        text,
                        style: getMediumTextStyle(
                          color: ManagerColors.white,
                          fontSize: ManagerFontSize.s15,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
        SizedBox(
          height: ManagerHeight.h10,
        ),
        CarouselSlider(
          carouselController: controller.carouselController,
          options: CarouselOptions(
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: Constants.popViewportFraction,
            autoPlay: false,
            height: height,
            pageSnapping: false,
            padEnds: false,
            enableInfiniteScroll: false,
            disableCenter: true,
            onPageChanged: (index, reason) {
              controller.change(index);
            },
          ),
          items: controller.secPopImages.asMap().entries.map(
            (item) {
              int index = item.key;
              String image = item.value;
              String text = controller.popText[index];
              return Container(
                margin: EdgeInsets.only(
                  bottom: ManagerHeight.h10,
                  left: ManagerWidth.w10,
                  right: ManagerWidth.w10,
                ),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Constants.offset,
                      color: ManagerColors.greyShadow,
                      blurRadius: Constants.catBlurRadius,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(image.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: ManagerWidth.w10,
                        bottom: ManagerHeight.h10,
                      ),
                      child: Text(
                        text,
                        style: getMediumTextStyle(
                          color: ManagerColors.white,
                          fontSize: ManagerFontSize.s15,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ]);
    });
  }
}
