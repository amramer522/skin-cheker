import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/paient/feed_back/view.dart';
import 'package:skin_checker/screens/paient/home/near_by_doctors/doctor_details/book_appointment/view.dart';
import 'package:skin_checker/widgets/items/item_review.dart';

import '../../../../../helper/colors.dart';
import '../../../../../widgets/notification_icon.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350.h,
                padding: EdgeInsetsDirectional.only(
                    top: 15.h, start: 40.w, end: 40.w),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(FakeData.doctor),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 22.5.r,
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(start: 8.w),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 24.r,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        const NotificationIcon(),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      color: Colors.white.withOpacity(.3),
                      padding: EdgeInsets.all(10.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr.Mohamed",
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  fontFamily: FontFamily.bold,
                                  color: Colors.black)),
                          Text("Skin Cancer Specialist ",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: FontFamily.medium,
                                  color: const Color(0xff878787))),
                          SizedBox(
                            height: 19.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 38.h,
                                width: 33.w,
                                padding: EdgeInsets.all(5.r),
                                decoration: BoxDecoration(
                                    color: const Color(0xff878787),
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Image.asset(
                                  Assets.icons.experience.path,
                                ),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          LocaleKeys.WorkExperience.tr() + "\n",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: const Color(0xff878787),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "5 +",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 38.h,
                                width: 33.w,
                                padding: EdgeInsets.all(5.r),
                                decoration: BoxDecoration(
                                    color: const Color(0xff878787),
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Image.asset(
                                  Assets.icons.patient.path,
                                ),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: LocaleKeys.Patient.tr() + "\n",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: const Color(0xff878787),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "120 +",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 38.h,
                                width: 33.w,
                                padding: EdgeInsets.all(5.r),
                                decoration: BoxDecoration(
                                    color: const Color(0xff878787),
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Image.asset(
                                  Assets.icons.rating.path,
                                ),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: LocaleKeys.Rating.tr() + "\n",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: const Color(0xff878787),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "4.5 ${LocaleKeys.from.tr()} 5",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: FontFamily.medium,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: TextButton(
                                  onPressed: () {
                                    navigateTo(context,page: const FeedBackScreen());
                                  },
                                  child: Text("Rate Doctor",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontFamily: FontFamily.extraBold,
                                          color: colorPrimary))))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 15.h, start: 40.w, end: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.Biography.tr(),
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: FontFamily.medium,
                        color: const Color(0xff878787),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(LocaleKeys.Reviews.tr(),
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: 20.h),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => const ItemReview(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
        child: ElevatedButton(
          onPressed: () {
            navigateTo(context, page: const BookAppointmentScreen());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              LocaleKeys.MakeAnAppointment.tr(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
