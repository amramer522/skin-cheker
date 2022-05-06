import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/shared/on_boarding/view.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.appLogo.path,
              height: 119.h,
              fit: BoxFit.fill,
              width: 110.94.w,
            ),
            Text(LocaleKeys.SkinChecker.tr(),
                style: TextStyle(
                    fontSize: 25.sp,
                    fontFamily: FontFamily.bold,
                    height: 3.3,
                    color: Colors.black)),
            ElevatedButton(
              onPressed: () {
                navigateTo(
                  context,
                  page: const OnBoardingScreen(),
                );
              },
              child: Text(
                LocaleKeys.SignInAsADoctor.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ElevatedButton(
              onPressed: () {
                navigateTo(
                  context,
                  page: const OnBoardingScreen(isDoctor: false),
                );
              },
              style: ElevatedButton.styleFrom(primary: const Color(0xffF68685)),
              child: Text(
                LocaleKeys.SignInAsAPatient.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
