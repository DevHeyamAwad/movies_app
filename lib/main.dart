import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movies_app/routes/routes.dart';

import 'config/constants.dart';
import 'config/dependency_injection.dart';
import 'core/service/theme_service.dart';

void main() async {
  await initModule();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeService _themeService;

  MyApp({super.key}) : _themeService = ThemeService();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        designSize: const Size(
          Constants.deviceWidth,
          Constants.deviceHeight,
        ),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashView,
            themeMode: _themeService.getThemeMode(),
            theme: _themeService.getThemeData(),
          );
        });
  }
}
