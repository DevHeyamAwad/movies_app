import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:carousel_slider/carousel_controller.dart';

class HomeController extends GetxController {
  late CarouselController carouselController;
  int selectedCategoryIndex = 0;
  int current = 0;
  @override
  void onInit() {
    // TODO: implement onInit

    carouselController = CarouselController();
  }

  void change(index) {
    current = index;
    update();
  }
}
