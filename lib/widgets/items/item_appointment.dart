import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../screens/doctor/home/pages/chat/chatting/view.dart';

class ItemAppointment extends StatelessWidget {
  const ItemAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // navigateTo(context,page: const MedicalCardScreen());
      },
      child: Container(
        height: 133.h,
        width: 296.w,
        padding: EdgeInsetsDirectional.only(top: 8.h, start: 11.w, bottom: 10.h, end: 17.w),
        margin: EdgeInsetsDirectional.only(top: 15.h),
        decoration: BoxDecoration(
            color: const Color(0xffECECEC), borderRadius: BorderRadius.circular(5.r)),
        child: Column(
          children: [
            Expanded(
              child: Row(
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
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: FontFamily.regular,
                          height: 1.9,
                          color: const Color(0xff878787)),
                      children: [
                        TextSpan(
                          text: FakeData.name + "\n",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: FontFamily.medium,
                              color: Colors.black),
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.only(bottom: 4.h, end: 3.w),
                          child: Image.asset(
                            Assets.icons.appointments.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: FakeData.day + " , ",
                        ),
                        TextSpan(
                          text: FakeData.time + "\n",
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.only(bottom: 4.h, end: 3.w),
                          child: Image.asset(
                            Assets.icons.phone.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: FakeData.phone,
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              bottom: 4.h, start: 3.w, end: 3.w),
                          child: Image.asset(
                            Assets.icons.place.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: FakeData.place,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    navigateTo(context,page: const ChattingScreen());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Container(
                      width: 51.w,
                      height: 31.h,
                      padding: EdgeInsets.all(6.r),
                      color: const Color(0xff01B4D2).withOpacity(.3),
                      child: Image.asset(
                        Assets.icons.message.path,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.reminder.tr(),
                        style: const TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
