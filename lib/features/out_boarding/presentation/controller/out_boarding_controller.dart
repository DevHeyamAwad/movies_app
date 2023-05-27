import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:movies_app/core/resources/manager_assets.dart';
import 'package:movies_app/core/resources/manager_strings.dart';

import '../view/widgets/out_boarding_item.dart';

class OutBoardingController extends GetxController {
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
}
