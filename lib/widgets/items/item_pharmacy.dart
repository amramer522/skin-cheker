import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';

class ItemPharmacy extends StatelessWidget {
  const ItemPharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 164.h,
      margin: EdgeInsets.only(
        top: 10.h,
      ),
      padding: EdgeInsetsDirectional.only(
          top: 8.h, bottom: 10.h, start: 8.w, end: 8.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: const Color(0xffECECEC)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.network(
              "https://sellermarket.ru/uploads/thumbs/news/800x353_cropped_1c2942500eee596514f958959139f02c.jpg",
              height: 104.h,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'DR/Mohamed Pharmacy\n',
                    style: TextStyle(
                        fontSize: 18.sp,
                        height: 1.5.h,
                        fontFamily: FontFamily.medium,
                        color: Colors.black),
                  ),
                  TextSpan(
                      text: "Adress: 55 torel street - Mansoura",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: FontFamily.medium,
                          color: Colors.black.withOpacity(.55)))
                ],
              )),
              const Spacer(),
              RatingBar.builder(
                itemSize: 10.w,
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
              ),
              Text("4.0",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: FontFamily.bold,
                      color: const Color(0xff878787)))
            ],
          )
        ],
      ),
    );
  }
}
