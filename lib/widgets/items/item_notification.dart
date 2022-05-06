import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
class ItemNotification extends StatelessWidget {
  const ItemNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      padding: EdgeInsetsDirectional.only(start: 8.w,end: 8.w,top: 11.h,bottom: 5.h),
      margin: EdgeInsets.only(top: 5.h),
      decoration: BoxDecoration(
        color: const Color(0xffE7F7F9),
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("You set reminder for appointment today",style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.medium,color: Colors.black)),
          SizedBox(height: 5.h,),
          Align(alignment: AlignmentDirectional.centerEnd,child: Text("30 min ago",style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.medium,color: const Color(0xff01B4D2)))),
        ],
      ),
    );
  }
}
