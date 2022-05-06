import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_notification.dart';

import '../../../gen/fonts.gen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          withoutNotification: true, text: LocaleKeys.Notification.tr()),
      body: Container(
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text(LocaleKeys.Today.tr(),style: TextStyle(fontSize: 18.sp,fontFamily: FontFamily.bold,color: Colors.black)),
                const  Spacer(),
                Text(LocaleKeys.ClearAll.tr(),style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.medium,color: Colors.black.withOpacity(.55))),
              ],
            ),
            SizedBox(height: 5.h,),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => const ItemNotification(),
              itemCount: 2,
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text(LocaleKeys.Yesterday.tr(),style: TextStyle(fontSize: 18.sp,fontFamily: FontFamily.bold,color: Colors.black)),
              ],
            ),
            SizedBox(height: 5.h,),
            ListView.builder(
              shrinkWrap: true,

              itemBuilder: (context, index) => const ItemNotification(),
              itemCount: 2,
            ),
          ],
        ),
      ),
    );
  }
}
