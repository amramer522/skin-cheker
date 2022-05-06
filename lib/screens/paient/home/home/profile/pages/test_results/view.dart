import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../../../../../widgets/items/item_test_result.dart';

class TestResultScreen extends StatelessWidget {
  const TestResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.TestResults.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocaleKeys.Upcoming.tr(),style: TextStyle(fontSize: 18.sp,fontFamily: FontFamily.bold,color: Colors.black)),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => const ItemTestResult(isUpComing: true),
                itemCount: 3,
              ),
              SizedBox(height: 15.h,),
              Text(LocaleKeys.History.tr(),style: TextStyle(fontSize: 18.sp,fontFamily: FontFamily.bold,color: Colors.black)),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const ItemTestResult(),
                itemCount: 5,
              ),
              SizedBox(height: 20.h,)
            ],
          ),
        ),
      ),
    );
  }
}
