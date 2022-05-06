import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';

import '../../gen/fonts.gen.dart';

class ItemTestResult extends StatelessWidget {
  final bool isUpComing;

  const ItemTestResult({Key? key, this.isUpComing = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isUpComing?80.h:110.h,
      padding: EdgeInsets.all(14.r),
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: const Color(0xffECECEC)),
      child: Column(
        children: [
          isUpComing
              ? const SizedBox.shrink()
              : Row(
                  children: [
                    Text("20.2.2022",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: FontFamily.medium,
                            color: Colors.black)),
                    const Spacer(),
                    Image.asset(
                      Assets.icons.download.path,
                      height: 24.h,
                      width: 24.w,
                    )
                  ],
                ),
          isUpComing
              ? const SizedBox.shrink()
              : SizedBox(
                  height: 13.h,
                ),
          isUpComing
              ? const SizedBox.shrink()
              : Row(
                  children: [
                    Text("Test",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: FontFamily.medium,
                            color: Colors.black.withOpacity(.7))),
                    const Spacer(),
                    Text("Blood analysis",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: FontFamily.medium,
                            color: Colors.black))
                  ],
                ),
          isUpComing
              ? Row(
                  children: [
                    Text("PCR COVID-19",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.extraBold,
                            color: Colors.black)),
                    const Spacer(),
                    Text("Will be in 2 days",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: FontFamily.regular,
                            color: Colors.black.withOpacity(.44))),
                  ],
                )
              : const SizedBox.shrink(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text("Laboratory",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: FontFamily.medium,
                      color: Colors.black.withOpacity(.7))),
              const Spacer(),
              Text("Al aml Lab",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: FontFamily.medium,
                      color: Colors.black))
            ],
          ),
        ],
      ),
    );
  }
}
