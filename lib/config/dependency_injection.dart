import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/core/storage/local/app_settings_shared_preferances.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/splash/presentation/controller/splash_controller.dart';

final instance = GetIt.instance;

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferance =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferance);
  instance.registerLazySingleton<AppSettingsSharedPreferences>(
      () => AppSettingsSharedPreferences(instance()));
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

finishSplash() {
  Get.delete<SplashController>();
}

initOutBoarding() {
  finishSplash();
}
