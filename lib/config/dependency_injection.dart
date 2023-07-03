import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/core/network/app_api.dart';
import 'package:movies_app/core/network/dio_factory.dart';
import 'package:movies_app/core/storage/local/app_settings_shared_preferances.dart';
import 'package:movies_app/features/out_boarding/presentation/controller/out_boarding_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/home/presentation/controller/home_controller.dart';
import '../features/main/presentation/controller/main_controller.dart';
import '../features/splash/presentation/controller/splash_controller.dart';

final instance = GetIt.instance;

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferance =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferance);
  instance.registerLazySingleton<AppSettingsSharedPreferences>(
      () => AppSettingsSharedPreferences(instance()));
  instance.registerLazySingleton(() => DioFactory());
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppApi>(() => AppApi(dio));
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

finishSplash() {
  Get.delete<SplashController>();
}

initOutBoarding() {
  finishSplash();
  Get.put<OutBoardingController>(OutBoardingController());
}

finishOutBoarding() {
  Get.delete<OutBoardingController>();
}

initMainModule() {
  Get.put<MainController>(MainController());
  initHomeModule();
}

initHomeModule() {
  Get.put<HomeController>(HomeController());
}
