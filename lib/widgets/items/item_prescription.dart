import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';

class ItemPrescription extends StatelessWidget {
  const ItemPrescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: const Color(0xff66BFC5))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.network(
              "https://img.freepik.com/free-psd/3d-render-icon-medical_547056-600.jpg",
              fit: BoxFit.fill,
              height: 90.h,
              width: 90.w,
            ),
          ),
          SizedBox(width: 3.w,),
          Text.rich(
            TextSpan(
              style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.3.h,
                  fontFamily: FontFamily.regular,
                  color: Colors.black),
              children: const[
                TextSpan(
                    text: "Panadol 500mg\n",
                    style: TextStyle(fontFamily: FontFamily.bold)),
                TextSpan(text: "2 pill, once per day\n"),
                TextSpan(
                    text: "Breakfast - After eating",
                    style: TextStyle(
                        fontFamily: FontFamily.medium,
                        color: Color(0xff66BFC5))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
