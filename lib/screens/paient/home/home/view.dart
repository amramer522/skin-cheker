import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/paient/home/near_by_doctors/view.dart';
import 'package:skin_checker/screens/paient/home/near_by_pharmacies/view.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_community.dart';
import 'package:skin_checker/widgets/items/item_doctor.dart';
import 'package:skin_checker/widgets/items/item_pharmacy.dart';

import '../../../../helper/fake_data.dart';
import '../../../../widgets/items/item_medication.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(isSecond: false, text: LocaleKeys.Homepage.tr()),
      body: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffECECEC).withOpacity(.5),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 11.w,
                          ),
                          Icon(
                            Icons.search,
                            size: 20.w,
                            color: const Color(0xff878787).withOpacity(.5),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:
                                    LocaleKeys.SearchForDoctorOrPharmacy.tr(),
                                fillColor: Colors.transparent,
                                hintStyle: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: FontFamily.regular),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 32.w,
                    padding: EdgeInsets.all(6.r),
                    child: Image.asset(Assets.icons.filter.path),
                    decoration: BoxDecoration(
                        color: const Color(0xffECECEC).withOpacity(.5),
                        borderRadius: BorderRadius.circular(5.r)),
                  )
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffE7F7F9),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Don't forget to meet Dr Mohamed",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: FontFamily.bold,
                                    color: Colors.black)),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: FontFamily.regular,
                                    height: 1.9,
                                    color: Colors.black),
                                children: [
                                  WidgetSpan(
                                      child: Padding(
                                    padding: EdgeInsetsDirectional.only(
                                        bottom: 4.h, end: 3.w),
                                    child: Image.asset(
                                      Assets.icons.appointments.path,
                                      height: 18.h,
                                      width: 18.w,
                                      color: const Color(0xff01B4D2),
                                    ),
                                  )),
                                  TextSpan(
                                    text: FakeData.day + "\n",
                                  ),
                                  WidgetSpan(
                                      child: Padding(
                                    padding: EdgeInsetsDirectional.only(
                                        bottom: 4.h, end: 3.w),
                                    child: Image.asset(
                                      Assets.icons.appointments.path,
                                      height: 18.h,
                                      width: 18.w,
                                      color: const Color(0xff01B4D2),
                                    ),
                                  )),
                                  TextSpan(
                                    text: "10:00AM - 11:00AM" + "\n",
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      Assets.images.calender.path,
                      height: 72.75,
                      fit: BoxFit.fill,
                      width: 82.w,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(LocaleKeys.MedicationReminder.tr(),
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: FontFamily.bold,
                      color: Colors.black)),
              SizedBox(
                height: 106.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const ItemMedication(),
                  // shrinkWrap: true,
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ItemCommunity(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(LocaleKeys.NearbyDoctors.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.bold,
                          color: Colors.black)),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, page: const NearByDoctorsScreen());
                    },
                    child: Text(LocaleKeys.SeeAll.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontFamily.medium,
                            color: Colors.black.withOpacity(.44))),
                  ),
                ],
              ),
              SizedBox(
                height: 110.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>  ItemDoctor(index),
                  // shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(LocaleKeys.NearbyPharmacies.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.bold,
                          color: Colors.black)),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, page: const NearByPharmaciesScreen());
                    },
                    child: Text(LocaleKeys.SeeAll.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontFamily.medium,
                            color: Colors.black.withOpacity(.44))),
                  ),
                ],
              ),
              SizedBox(
                height: 180.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ItemPharmacy(index),
                  // shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
