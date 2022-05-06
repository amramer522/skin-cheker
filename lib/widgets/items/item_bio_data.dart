import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';

class ItemBioData extends StatelessWidget {
  final String iconPath, text;

  const ItemBioData({Key? key, required this.iconPath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.h,
      // width: 67.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: const Color(0xffF68685),
      ),
      margin: EdgeInsetsDirectional.only(start: 9.w),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              iconPath,
              // height: 29.h,
              width: 29.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: FontFamily.regular,
                  color: Colors.white))
        ],
      ),
    );
  }
}
