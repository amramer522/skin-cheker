import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/shared/after_splash/view.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 3), (){
    //   navigateTo(context,page: const AfterSplash(),leaveHistory: false);
    // });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(width: double.infinity, child: Column(
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
        ],
      )),
    );
  }
}
