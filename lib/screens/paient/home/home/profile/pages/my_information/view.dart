import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../../../../../widgets/inputs/my_info_input.dart';


class MyInformationScreen extends StatelessWidget {
  const MyInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.MyInformation.tr()),
      body: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w, top: 3.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 56.r,
                backgroundImage: NetworkImage(
                  FakeData.person,
                ),
                child: Icon(Icons.add_a_photo_outlined,color: Colors.white,size: 27.r,),
              ),
              Text(FakeData.name,
                  style: TextStyle(
                      fontSize: 21.sp,
                      fontFamily: FontFamily.medium,
                      height: 2.4,
                      color: Colors.black)),
              MyInfoInput(
                  iconPath: Assets.icons.profile.path,
                  hint: LocaleKeys.Name.tr()),
              MyInfoInput(
                  iconPath: Assets.icons.email.path,
                  hint: LocaleKeys.Email.tr()),
              MyInfoInput(
                  iconPath: Assets.icons.phone.path,
                  hint: LocaleKeys.PhoneNumber.tr()),
              MyInfoInput(
                  iconPath: Assets.icons.location.path,
                  hint: LocaleKeys.Location.tr()),
              MyInfoInput(
                  iconPath: Assets.icons.password.path,
                  hint: LocaleKeys.Password.tr(),
                  isPassword: true),
              MyInfoInput(
                  iconPath: Assets.icons.gender.path,
                  hint: LocaleKeys.Gender.tr()),
              MyInfoInput(
                  iconPath: Assets.icons.dateOfBirth.path,
                  hint: LocaleKeys.DateOfBirth.tr()),
              SizedBox(
                height: 15.h,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.w, vertical: 10.h),
                    child: Text(
                      LocaleKeys.Save.tr(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
