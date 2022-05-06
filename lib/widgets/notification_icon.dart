import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';
import '../helper/helper_methods.dart';
import '../screens/shared/notifications/view.dart';
class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, page: const NotificationsScreen());
      },
      child: Badge(
        // badgeColor: colorPrimary,
        borderSide: const BorderSide(width: .5, color: Colors.white),
        position: BadgePosition.topEnd(end: -.5, top: .5),
        badgeContent: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // color: colorPrimary,
            ),
            child: Text('1',
                style: TextStyle(
                    fontSize: 8.sp,
                    fontFamily: FontFamily.bold,
                    height: .8,
                    color: Colors.white))),
        child: Container(
          height: 29.h,
          width: 22.w,
          child: Image(
            image: Assets.icons.notifications,
          ),
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(9.w)),
        ),
      ),
    );
  }
}
