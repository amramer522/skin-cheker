import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import '../../helper/colors.dart';
class ItemMedicalRecord extends StatelessWidget {
  const ItemMedicalRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(15.r),
      decoration: BoxDecoration(
        color: const Color(0xffECECEC),
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General Examine Result",style: TextStyle(fontSize: 16.sp,height: 1.6.h,fontFamily: FontFamily.bold,color: Colors.black)),
          Text("Noor Hospital",style: TextStyle(fontSize: 14.sp,height: 1.2.h,fontFamily: FontFamily.medium,color: Colors.black)),
          Text("3 days ago",style: TextStyle(fontSize: 14.sp,height: 1.2.h,fontFamily: FontFamily.medium,color: colorPrimary)),
        ],
      ),
    );
  }
}
