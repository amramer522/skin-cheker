import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_profile.dart';

import 'pages/community/view.dart';
import 'pages/medical_records/view.dart';
import 'pages/my_information/view.dart';
import 'pages/prescription/view.dart';
import 'pages/test_results/view.dart';

class PatientProfilePage extends StatefulWidget {
  const PatientProfilePage({Key? key}) : super(key: key);

  @override
  State<PatientProfilePage> createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Profile.tr()),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 56.r,
                backgroundImage: NetworkImage(
                  FakeData.person,
                ),
              ),
              Text(FakeData.name,
                  style: TextStyle(
                      fontSize: 21.sp,
                      fontFamily: FontFamily.medium,
                      height: 2.4,
                      color: Colors.black)),
              SizedBox(
                height: 27.h,
              ),
              ItemProfile(
                  iconPath: Assets.icons.profile.path,
                  text: LocaleKeys.MyInformation.tr(),
                  page: const MyInformationScreen()),
              Divider(
                thickness: 1.h,
              ),
              ItemProfile(
                  iconPath: Assets.icons.testResult.path,
                  page: const TestResultScreen(),
                  text: LocaleKeys.TestResult.tr()),
              Divider(
                thickness: 1.h,
              ),
              ItemProfile(
                  iconPath: Assets.icons.medicalRecord.path,
                  text: LocaleKeys.MedicalRecord.tr(),
                page: MedicalRecordsScreen(),
              ),
              Divider(
                thickness: 1.h,
              ),
              ItemProfile(
                  iconPath: Assets.icons.prescription.path,
                  text: LocaleKeys.Prescription.tr(),
                  page: const PrescriptionScreen()),
              Divider(
                thickness: 1.h,
              ),
              ItemProfile(
                  iconPath: Assets.icons.community.path,
                  text: LocaleKeys.Community.tr(),
                  page: const CommunityScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
