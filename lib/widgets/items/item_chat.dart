import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../gen/fonts.gen.dart';
import '../../screens/doctor/home/pages/chat/chatting/view.dart';
class ItemChat extends StatelessWidget {
  const ItemChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context,page: ChattingScreen());
      },
      child: Container(
        height: 76.h,
        padding: EdgeInsetsDirectional.only(start: 8.w,top: 10.h,bottom: 3.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
            color:const  Color(0xffE7F7F9),
      ),
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.network(
                FakeData.person,
                height: 70.h,
                width: 70.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: FakeData.name +"\t\t",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: FontFamily.medium,
                        color: Colors.black),
                  ),

                  TextSpan(
                    text: FakeData.time + "\n",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: FontFamily.regular,
                          color:const  Color(0xff707070))
                  ),
                  TextSpan(
                    text: "Hello Doctor",
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontFamily: FontFamily.regular,
                          height: 2.2,
                          color: const Color(0xff707070))
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
