import 'package:flutter/widgets.dart';
import 'package:movies_app/core/resources/manager_colors.dart';
import 'package:movies_app/core/resources/manager_strings.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_styles.dart';
import '../../../../core/widegts/scaffold_with_background_image.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scaffoldWithBackGroundImage(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: ManagerHeight.h200,
          ),
          Image.asset(
            ManagerAssets.backgroundLogo,
            width: ManagerWidth.w102,
            height: ManagerHeight.h107,
          ),
          SizedBox(
            height: ManagerHeight.h5,
          ),
          Text(
            ManagerStrings.splashText,
            style: getRegularStyle(
              color: ManagerColors.white,
              fontSize: ManagerSize.s16,
            ),
          ),
        ],
      ),
    );
  }
}
