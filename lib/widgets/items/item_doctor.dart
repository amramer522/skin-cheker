import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../screens/paient/home/near_by_doctors/doctor_details/view.dart';

class ItemDoctor extends StatelessWidget {
  const ItemDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, page: const DoctorDetailsScreen());
      },
      child: Container(
        margin: EdgeInsets.only(top: 15.h),
        decoration: BoxDecoration(
            color: const Color(0xffECECEC),
            borderRadius: BorderRadius.circular(5.r)),
        padding: EdgeInsetsDirectional.only(
            start: 8.w, end: 8.w, top: 7.h, bottom: 11.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.network(
                FakeData.doctor,
                height: 70.h,
                width: 70.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dr.Mohamed\n',
                          style: TextStyle(
                              fontSize: 18.sp,
                              height: 2.1.h,
                              fontFamily: FontFamily.medium,
                              color: Colors.black),
                        ),
                        WidgetSpan(
                            child: RatingBar.builder(
                          itemSize: 15.w,
                          ignoreGestures: true,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          unratedColor: const Color(0xFFFFBC01).withOpacity(.2),
                          glowColor: const Color(0xffFFBC01),
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xffFFBC01),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )),
                        TextSpan(
                            text: "4.0",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: FontFamily.bold,
                                color: const Color(0xff878787)))
                      ],
                    )),
                    SizedBox(
                      width: 30.w,
                    ),
                    ClipRRect(
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
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: FontFamily.regular,
                        height: 1.9,
                        color: const Color(0xff878787)),
                    children: [
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
                            bottom: 4.h, start: 16.w, end: 3.w),
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
