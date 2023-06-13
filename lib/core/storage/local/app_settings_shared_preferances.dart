import 'package:movies_app/core/extensions/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/constants.dart';

class AppSettingsSharedPreferences {
  final SharedPreferences _sharedPreferances;
  AppSettingsSharedPreferences(this._sharedPreferances);

  Future<void> setOutBoardingViewed() async {
    await _sharedPreferances.setBool(
        ConstantsPrefsKeys.outBoardingViewedKey, true);
  }

  bool getOutBoardingViewed() {
    return _sharedPreferances
        .getBool(ConstantsPrefsKeys.outBoardingViewedKey)
        .onNull();
  }
}
