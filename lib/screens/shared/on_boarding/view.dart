import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/shared/login/view.dart';

import 'controller.dart';

class OnBoardingScreen extends StatefulWidget {
  final bool isDoctor;

  const OnBoardingScreen({Key? key, this.isDoctor = true}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(34.r),
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Container(
              height: 294.h,
              child: PageView(
                onPageChanged: (value) {
                  controller.changePage(value);
                  setState(() {});
                },
                children: List.generate(
                 widget.isDoctor? controller.images.length:controller.imagesP.length,
                  (index) => Image.asset(
                    widget.isDoctor?controller.images[controller.currentIndex]:controller.imagesP[controller.currentIndex],
                    width: 225.44.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.isDoctor?controller.images.length:controller.imagesP.length,
                (index) => Container(
                  margin: EdgeInsetsDirectional.only(start: 5.w),
                  height: 8.h,
                  width: 8.w,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(25.r),
                    color: Color(index == controller.currentIndex
                        ? 0xff01B4D2
                        : 0x1301B4D2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              widget.isDoctor?controller.hints[controller.currentIndex]:controller.hintsP[controller.currentIndex],
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: FontFamily.bold,
                  color: const Color(0xff365A6A)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            controller.currentIndex == 1
                ? ElevatedButton(
                    onPressed: () {
                      navigateTo(context, page: LoginScreen(isDoctor: widget.isDoctor,));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Text(
                        LocaleKeys.Finish.tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ))
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
