import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
class UserModel{
  final int id;
  final String name;
  final String backgroundimage;
  UserModel({
    required this.id,
    required this.name,
    required this.backgroundimage,

  });
}

class ItemPharmacy extends StatelessWidget {
  static List<UserModel> users =[

    UserModel(
      id: 0,
      name: 'Elazaby pharmacy ',
      backgroundimage:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTixAQBGYhIshtNfqfTeqXCOlKKysdbR6h-g&usqp=CAU',


    ),
    UserModel(
      id:1 ,
      name: 'Aljawhara Elmotamyza pharmacy ',
      backgroundimage:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq-qSaCo9XwxhecYANAqrFSkzIsjtIWx3Hhw&usqp=CAU',

    ),
    UserModel(
      id: 2,
      name: '19011 ',
      backgroundimage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDPA1bVYlmjuoAvc_4D2PMVdg1ygl8iSY80A&usqp=CAU',
    ),
    UserModel(
      id: 3,
      name: 'faysal pharmacy ',
      backgroundimage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ_nnzuYW0A1bIfl9IWbHZv-ems3qkSL5pEQ&usqp=CAU',
    ),
    UserModel(
      id: 4,
      name: 'Elazaby jehan ',
      backgroundimage:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTixAQBGYhIshtNfqfTeqXCOlKKysdbR6h-g&usqp=CAU',


    ),
    UserModel(
      id:5 ,
      name: 'ELtarshoby',
      backgroundimage:'https://hotlines.tel/assets/imgs/hotlinesimgs/19121.jpg',

    ),
  ];
  int x;
   ItemPharmacy(this.x,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
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
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.network(
                users[x].backgroundimage,
                fit: BoxFit.fill,
              ),
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
                    text: users[x].name,
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
              SizedBox(width: 20,),
              // const Spacer(),
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
