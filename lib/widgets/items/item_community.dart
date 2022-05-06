import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';

import '../../gen/fonts.gen.dart';

class ItemCommunity extends StatefulWidget {
  const ItemCommunity({Key? key}) : super(key: key);

  @override
  State<ItemCommunity> createState() => _ItemCommunityState();
}

class _ItemCommunityState extends State<ItemCommunity> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 9.h),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff66BFC5),
          ),
          borderRadius: BorderRadius.circular(5.r)),
      child: Column(
        children: [
          SizedBox(
            height: 9.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              CircleAvatar(
                radius: 30.r,
                backgroundImage: NetworkImage(FakeData.person),
              ),
              SizedBox(
                width: 9.w,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: FakeData.name + '\n',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: FontFamily.bold,
                        height: 2.1,
                        color: const Color(0xff707070),
                      ),
                    ),
                    TextSpan(
                      text: "Yesterday 01:30 AM",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: FontFamily.regular,
                        color: const Color(0xff707070),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w),
            child: Text(
                'Hey, I have some strange marks on my arm sand I need a professional opinion to tell me if I should be concerned',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: FontFamily.medium,
                    height: 1.3.h,
                    color: Color(0xff707070))),
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 8.w,
              ),
              Icon(
                Icons.favorite,
                size: 21.h,
                color: const Color(0xff0E8DA2),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                '50',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontFamily.medium,
                    color: const Color(0xff707070)),
              ),
              SizedBox(
                width: 13.w,
              ),
              Image.asset(
                Assets.icons.comment.path,
                height: 23.h,
                width: 23.w,
                color: const Color(0xff0E8DA2),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                '21',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontFamily.medium,
                    color: const Color(0xff707070)),
              )
            ],
          ),
          Divider(
            thickness: 1.h,
            // height: 15.h,
            color: const Color(0xff66BFC5),
          ),
          SizedBox(height: 2.h,),
          Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              GestureDetector(
                onTap: (){
                  isLiked= !isLiked;
                  setState(() {

                  });
                },
                child: Icon(
                  isLiked?Icons.favorite:Icons.favorite_border,
                  size: 21.h,
                  color: const Color(0xff0E8DA2),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                LocaleKeys.Like.tr(),
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontFamily.medium,
                    color: const Color(0xff707070)),
              ),
              const Spacer(),
              Image.asset(
                Assets.icons.comment.path,
                height: 23.h,
                width: 23.w,
                color: const Color(0xff0E8DA2),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                LocaleKeys.Comment.tr(),
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontFamily.medium,
                    color: const Color(0xff707070)),
              ),
              const Spacer(),
              Image.asset(
                Assets.icons.watch.path,
                height: 23.h,
                width: 23.w,
                color: const Color(0xff0E8DA2),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "100",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: FontFamily.medium,
                    color: const Color(0xff707070)),
              ),
              SizedBox(width: 21.w,)
            ],
          ),
          SizedBox(height: 4.h,)
        ],
      ),
    );
  }
}
