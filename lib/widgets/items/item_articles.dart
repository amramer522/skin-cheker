import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/helper/fake_data.dart';

class ItemArticles extends StatelessWidget {
  const ItemArticles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
      width: 185.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Image.network(
            FakeData.article,
            fit: BoxFit.fill,
            height: 112.h,
          ),
          SizedBox(height: 4.h,),
          Text(FakeData.articleText,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: FontFamily.bold,
                  color: Colors.black))
        ],
      ),
    );
  }
}
