import 'package:flutter/material.dart';
import 'package:movies_app/features/main/presentation/view/main_view.dart';

import '../config/dependency_injection.dart';
import '../core/resources/manager_strings.dart';
import '../features/out_boarding/presentation/view/out_boarding_view.dart';
import '../features/splash/presentation/view/splash_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String outBoardingView = '/out_boarding_view';
  static const String mainView = '/main_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.outBoardingView:
        initOutBoarding();
        return MaterialPageRoute(builder: (_) => const OutBoardingView());
      case Routes.mainView:
        initMainModule();
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(ManagerStrings.noRoutFound),
        ),
        body: const Center(
          child: Text(ManagerStrings.noRoutFound),
        ),
      ),
    );
  }
}
