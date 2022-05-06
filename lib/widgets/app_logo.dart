import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';

import '../gen/assets.gen.dart';
import '../generated/locale_keys.g.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          Assets.images.appLogo.path,
          height: 68.h,
          fit: BoxFit.fill,
          width: 63.w,
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(LocaleKeys.SkinChecker.tr(),
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: FontFamily.bold,
                color: Colors.black)),
      ],
    );
  }
}
