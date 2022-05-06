import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_appointment.dart';
import 'package:skin_checker/widgets/items/item_articles.dart';
import 'package:skin_checker/widgets/items/item_patients.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(isSecond: false, text: LocaleKeys.Homepage.tr()),
      body: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.h,
                decoration: const BoxDecoration(color: Color(0xff66BFC5)),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(LocaleKeys.NextAppointmentWith.tr(),
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: FontFamily.medium,
                                  color: Colors.white)),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text("Mohamed at 8:00 Pm",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: FontFamily.bold,
                                  color: Colors.black)),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                LocaleKeys.reminderLater.tr(),
                                style: const TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Image.asset(
                      Assets.images.calender.path,
                      height: 78.75,
                      fit: BoxFit.fill,
                      width: 86.w,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Text(LocaleKeys.Patients.tr(),
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: FontFamily.bold,
                      color: Colors.black)),
              SizedBox(
                height: 90.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const ItemPatients(),
                  // shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder:(context, index) => SizedBox(width: 10.w,),
                ),
              ),
              Text(LocaleKeys.TodayAppointments.tr(),
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: FontFamily.bold,
                      color: Colors.black)),
              SizedBox(
                height: 150.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const ItemAppointment(),
                  // shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder:(context, index) => SizedBox(width: 10.w,),
                ),
              ),
              SizedBox(height: 10.h,),
              Text(LocaleKeys.Articles.tr(),
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: FontFamily.bold,
                      color: Colors.black)),
              SizedBox(
                height: 164.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const ItemArticles(),
                  // shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder:(context, index) => SizedBox(width: 10.w,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
