import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_medical_card.dart';

import '../../../helper/fake_data.dart';
import '../../../widgets/items/item_bio_data.dart';

class MedicalCardScreen extends StatelessWidget {
  const MedicalCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.MedicalCard.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 12.h, start: 40.w, end: 40.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 92.h,
                padding: EdgeInsetsDirectional.all(10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: const Color(0xff66BFC5),
                ),
                margin: EdgeInsets.only(top: 15.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: Image.network(
                        FakeData.person,
                        height: 64.h,
                        width: 64.w,
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
                            text: FakeData.name + "\n",
                            style: TextStyle(
                                fontSize: 21.sp,
                                fontFamily: FontFamily.medium,
                                color: Colors.white),
                          ),
                          TextSpan(
                              text: "${LocaleKeys.DateOfBirth.tr()} : 18.7.1990",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: FontFamily.regular,
                                  height: 1.5.h,
                                  color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(LocaleKeys.BiometricData.tr(),
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: FontFamily.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(child: ItemBioData(text: "B+", iconPath: Assets.icons.bloodType.path)),
                  Expanded(child: ItemBioData(text: "Male", iconPath: Assets.icons.maleFemale.path)),
                  Expanded(child: ItemBioData(text: "177 m", iconPath: Assets.icons.height.path)),
                  Expanded(child: ItemBioData(text: "88 Kg", iconPath: Assets.icons.weight.path)),
                ],
              ),
              ItemMedicalCard(title: LocaleKeys.PersonalData.tr(),content: "+20 1111111111"),
              ItemMedicalCard(title: LocaleKeys.PatientAppointmentHistory.tr(),content: "Date of last appointment: 12 Jan,2022 ……."),
              ItemMedicalCard(title: LocaleKeys.Analysis.tr(),content: "Complete blood count is ready"),
              ItemMedicalCard(title: LocaleKeys.Forms.tr(),content: "Forms of prescription is complete,....."),
            ],
          ),
        ),
      ),
    );
  }
}
