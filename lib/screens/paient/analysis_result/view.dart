import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

class AnalysisResultScreen extends StatelessWidget {
  final bool isPass;

  const AnalysisResultScreen({Key? key, this.isPass = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.AnalysisResult.tr()),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                isPass
                    ? Assets.images.analysisResult2.path
                    : Assets.images.analysisResult1.path,
                fit: BoxFit.fill,
                width: 282.18.w,
                height: 274.69.h),
            SizedBox(
              height: 11.7.h,
            ),
            Text(
              isPass
                  ? LocaleKeys.AnalysisResult2Title.tr()
                  : LocaleKeys.AnalysisResult1Title.tr(),
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: FontFamily.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 7.7.h,
            ),
            Text(
                isPass
                    ? LocaleKeys.AnalysisResult2Hint.tr()
                    : LocaleKeys.AnalysisResult1Hint.tr(),
                style: TextStyle(
                    fontSize: isPass ? 18.sp : 16.sp,
                    fontFamily: isPass ? FontFamily.bold : FontFamily.regular,
                    color: Colors.black),
                textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
