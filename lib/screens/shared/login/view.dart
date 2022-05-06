import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/paient/home/view.dart';
import 'package:skin_checker/widgets/app_logo.dart';

import '../../../helper/colors.dart';
import '../../doctor/home/view.dart';
import '../sign_up/view.dart';

class LoginScreen extends StatefulWidget {
  final bool isDoctor;

  const LoginScreen({Key? key, this.isDoctor = true}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: 100.h,
                  ),
                  const AppLogo(),
                  SizedBox(
                    height: 44.h,
                  ),
                  Text(LocaleKeys.SignIn.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.bold,
                          color: const Color(0xff01B4D2))),
                  Text(LocaleKeys.EnterYourEmailAndPassword.tr(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.medium,
                          color: Colors.black)),
                  SizedBox(
                    height: 26.h,
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
                    height: 10.h,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(LocaleKeys.ForgetPassword.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontFamily.medium,
                            color: const Color(0xff01B4D2))),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        navigateTo(context,
                            page: widget.isDoctor
                                ? const HomeScreen()
                                : const PatientHomeScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.w),
                        child: Text(
                          LocaleKeys.SignIn.tr(),
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
                            text: LocaleKeys.DontHaveAnAccount.tr(),
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: FontFamily.medium,
                                color: const Color(0xff878787))),
                        WidgetSpan(
                            child: GestureDetector(
                                onTap: () {
                                  navigateTo(context,
                                      page: SignUpScreen(
                                        isDoctor: widget.isDoctor,
                                      ));
                                },
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 5.w,
                                  ),
                                  child: Text(LocaleKeys.CreateAnAccount.tr(),
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: FontFamily.medium,
                                          color: colorPrimary)),
                                )))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
