import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Profile.tr()),
      body: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.only(start: 39.w, end: 40.w),
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
              SizedBox(
                height: 27.h,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: LocaleKeys.EditName.tr()),
              ),
              SizedBox(
                height: 19.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: LocaleKeys.NewPassword.tr(),
                    suffixIcon: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        print("pressed");
                        isShown = !isShown;
                        setState(() {});
                      },
                      icon: Icon(
                          isShown ? Icons.visibility : Icons.visibility_off),
                    )),
                obscureText: !isShown,
              ),
              SizedBox(
                height: 19.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: LocaleKeys.ConfirmNewPassword.tr()),
                obscureText: !isShown,
              ),
              SizedBox(
                height: 19.h,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
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
