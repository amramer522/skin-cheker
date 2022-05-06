import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../helper/colors.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Feedback.tr()),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsetsDirectional.only(start: 40.w,top: 59.h, end: 40.w),
          padding: EdgeInsetsDirectional.only(
              start: 18.w, top: 28.h, bottom: 35.h, end: 40.w),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff66BFC5)),
              borderRadius: BorderRadius.circular(5.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(LocaleKeys.FeedBackHint.tr(),
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontFamily.medium,
                      color: Colors.black)),
              SizedBox(
                height: 16.h,
              ),
              Text("Dr. Mohamed",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontFamily.extraBold,
                      color: colorPrimary)),
              Image.network(
                FakeData.doctor,
                height: 100.h,
                width: 100.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 16.h,),
              RatingBar.builder(
                itemSize: 20.w,
                ignoreGestures: false,
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                unratedColor: const Color(0xff01B4D2).withOpacity(.2),
                glowColor: const Color(0xffFFBC01),
                itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Color(0xff01B4D2),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(height: 13.h,),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.r),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: LocaleKeys.Comment.tr(),
                    hintStyle: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.medium,color: const Color(0xff878787).withOpacity(.5))
                  ),
                  minLines: 4,
                  maxLines: 8,
                ),
              ),
              SizedBox(height: 19.h,),

              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            LocaleKeys.GiveFeedback.tr(),
                            style:
                                TextStyle(fontSize: 13.sp, color: Colors.white),
                          ))),
                  SizedBox(
                    width: 17.w,
                  ),
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.r))),
                          child: Text(LocaleKeys.Cancel.tr()))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
