import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_doctor.dart';

class NearByDoctorsScreen extends StatelessWidget {
  const NearByDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.NearbyDoctor.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only( start: 40.w, end: 40.w),
        child: Column(
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
                          size: 24.w,
                          color: const Color(0xff878787).withOpacity(.5),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: LocaleKeys.SearchForDoctor.tr(),
                              fillColor: Colors.transparent,
                              hintStyle: TextStyle(fontSize: 20.sp, fontFamily: FontFamily.regular),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
                Container(
                  height: 40.h,
                  width: 70.w,
                  padding: EdgeInsets.all(6.r),
                  child: Image.asset(Assets.icons.filter.path),
                  decoration: BoxDecoration(
                      color: const Color(0xffECECEC).withOpacity(.5),
                      borderRadius: BorderRadius.circular(5.r)),
                )
              ],
            ),
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 20.h),
                  shrinkWrap: true,
              itemBuilder: (context, index) =>  ItemDoctor(index),
              itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}
