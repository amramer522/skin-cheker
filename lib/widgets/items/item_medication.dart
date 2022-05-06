import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';

import '../../gen/fonts.gen.dart';
import '../../helper/colors.dart';

class ItemMedication extends StatelessWidget {
  const ItemMedication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 106.h,
      width: 157.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 87.h,
              padding: EdgeInsets.all(5.r),
              decoration: BoxDecoration(
                color: const Color(0xffECECEC),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Asprine",style: TextStyle(fontSize: 15.sp,height: 2,fontFamily: FontFamily.bold,color: colorPrimary)),
                  Text("09:00 AM-Before Eatingd",textAlign: TextAlign.center,style: TextStyle(fontSize: 13.sp,fontFamily: FontFamily.medium,color: Colors.black.withOpacity(.77
                  ))),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              child: Image.asset(
                Assets.images.asprine.path,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
