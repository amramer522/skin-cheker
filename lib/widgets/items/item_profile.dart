import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../gen/fonts.gen.dart';

class ItemProfile extends StatelessWidget {
  final String text;
  final String iconPath;
  final page;

  const ItemProfile(
      {Key? key, required this.text, required this.iconPath, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, page: page);
      },
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w,top: 3.h),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 27.h,
              width: 27.w,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(text,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: FontFamily.medium,
                    color: Colors.black)),
            const Spacer(),
            Image.asset(
              Assets.icons.forward.path,
              height: 27.h,
              width: 27.w,
            ),
          ],
        ),
      ),
    );
  }
}
