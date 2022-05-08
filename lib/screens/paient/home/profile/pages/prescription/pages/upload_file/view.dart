import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../gen/assets.gen.dart';
import '../../../../../../../../../gen/fonts.gen.dart';
import '../../../../../../../../../generated/locale_keys.g.dart';
import '../../../../../../../../../widgets/app_bars/home_app_bar.dart';
class UploadFileScreen extends StatelessWidget {
  const UploadFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.UploadFile.tr()),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 370.h,
              width: 296.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LocaleKeys.DragAndDropPhotosHere.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.medium,
                          color: Colors.black)),
                  SizedBox(height: 36.h,),
                  Image.asset(Assets.images.uploadFile.path,
                      fit: BoxFit.fill, width: 136.21.w, height: 143.67.h),
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.images.dashedBorder.path))),
            )
          ],
        ),
      ),
    );
  }
}
