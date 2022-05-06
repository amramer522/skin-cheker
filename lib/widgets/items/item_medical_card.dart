import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
class ItemMedicalCard extends StatelessWidget {

  final String title,content;
  const ItemMedicalCard({Key? key, required this.title,required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.h,
      padding: EdgeInsetsDirectional.all(10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: const Color(0xffE7F7F9),
      ),
      margin: EdgeInsets.only(top: 12.h),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: title+"\n",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontFamily.medium,
                      color: const Color(0xff365A6A)),
                ),
                TextSpan(
                    text: content,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontFamily.regular,
                        height: 1.5.h,
                        color: Colors.black)),
              ],
            ),
          ),
          const Spacer(),
          Align(alignment: Alignment.topCenter,child: Image.asset(Assets.icons.forward.path,height: 24.h,width: 24.w,color: const Color(0xff2C3E50),)),
        ],
      ),
    );
  }
}
