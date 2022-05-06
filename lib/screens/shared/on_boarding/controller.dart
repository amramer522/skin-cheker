import 'package:easy_localization/easy_localization.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';

class OnBoardingController {
  var images = [Assets.images.onboarding1.path, Assets.images.onboarding2.path];
  var hints = [
    LocaleKeys.OnBoardingHint1.tr(),
    LocaleKeys.OnBoardingHint2.tr(),
  ];
  var imagesP = [Assets.images.onboardingp1.path, Assets.images.onboardingp2.path];
  var hintsP = [
    LocaleKeys.OnBoardingHintP1.tr(),
    LocaleKeys.OnBoardingHintP2.tr(),
  ];

  int currentIndex = 0;

  changePage(value) {
    currentIndex = value;
  }

}
