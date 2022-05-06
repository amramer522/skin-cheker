import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_logo.dart';

import '../../../helper/colors.dart';

class SignUpScreen extends StatefulWidget {
  final bool isDoctor;

  const SignUpScreen({Key? key, this.isDoctor = true}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding:
                  EdgeInsetsDirectional.only(top: 12.h, start: 40.w, end: 40.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  const AppLogo(),
                  SizedBox(
                    height: 44.h,
                  ),
                  Text(LocaleKeys.SignUp.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.bold,
                          color: const Color(0xff01B4D2))),
                  Text(LocaleKeys.CreateAnAccount.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.medium,
                          color: Colors.black)),
                  SizedBox(
                    height: 26.h,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.FirstName.tr()),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.LastName.tr()),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(hintText: LocaleKeys.Email.tr()),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: LocaleKeys.Password.tr(),
                        suffixIcon: IconButton(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onPressed: () {
                            print("pressed");
                            isShown = !isShown;
                            setState(() {});
                          },
                          icon: Icon(isShown
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                    obscureText: !isShown,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: LocaleKeys.ConfirmNewPassword.tr()),
                    obscureText: !isShown,
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: widget.isDoctor
                            ? LocaleKeys.ClinicLocation.tr()
                            : LocaleKeys.Location.tr()),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.w),
                        child: Text(
                          LocaleKeys.SignUp.tr(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: LocaleKeys.HaveAnAccount.tr(),
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: FontFamily.medium,
                                color: const Color(0xff878787))),
                        WidgetSpan(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 5.w,
                                  ),
                                  child: Text(LocaleKeys.logIn.tr(),
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: FontFamily.medium,
                                          color: colorPrimary)),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
