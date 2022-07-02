import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
import '../../helper/fake_data.dart';
class ItemReview extends StatelessWidget {
  const ItemReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          top: 11.h, start: 40.w, end: 40.w),
      decoration: BoxDecoration(
          color: const Color(0xffECECEC),
          borderRadius: BorderRadius.circular(5.r)
      ),
      height: 90.h,
      child: Row(
        children: [
          SizedBox(width: 10.w,),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.network(
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
              height: 72.h,
              width: 72.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 9.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'Mohamed Ahmed\n',
                    style: TextStyle(
                        fontSize: 18.sp,
                        height: 2.1.h,
                        fontFamily: FontFamily.medium,
                        color: Colors.black),
                  ),
                  WidgetSpan(
                      child: RatingBar.builder(
                        itemSize: 15.w,
                        ignoreGestures: true,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        unratedColor: const Color(0xFFFFBC01).withOpacity(.2),
                        glowColor: const Color(0xffFFBC01),
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xffFFBC01),
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )),
                ],
              )),
              SizedBox(
                height: 10.h,
              ),
              Text("Good Doctor, Thank you",style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.regular,color: const Color(0xff878787)))
            ],
          )
        ],
      ),
    );
  }
}
