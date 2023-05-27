import 'package:get/get.dart';

import '../../../../config/constants.dart';
import '../../../../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
        const Duration(
          seconds: Constants.splashDuration,
        ), () {
      Get.offAllNamed(
        Routes.outBoardingView,
      );
    });
  }
}
