import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';

class ItemChatting extends StatelessWidget {
  final bool isSender;
  const ItemChatting({Key? key, this.isSender =true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender?AlignmentDirectional.centerStart:AlignmentDirectional.centerEnd,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
        margin: EdgeInsets.only(top: 10.h),
        decoration: BoxDecoration(
            color: Color(isSender?0xffECECEC:0xff01B4D2),
            borderRadius: BorderRadius.circular(5.r)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Hello World!",style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.regular,color: Colors.black)),
            SizedBox(
              width: 28.w,
            ),
            Text("10:30 AM"),
          ],
        ),
      ),
    );
  }
}
