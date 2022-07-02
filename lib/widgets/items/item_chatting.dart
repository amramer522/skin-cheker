import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/fonts.gen.dart';
class UserModel{
  final int id;
  final String time;
  final String text;

  UserModel({
    required this.id,
    required this.time,
    required this.text,

  });
}

class ItemChatting extends StatelessWidget {
  static List<UserModel> users =[
  UserModel(
  id:0 ,
  text:'Hello',
  time: '10.0',
  ),
  UserModel(
  id: 1,
  time :'10.2',
  text:'Hi  ',
  ),
  UserModel(
  id: 2,
  time :'10.3',
  text:'How are you',
  ),
  UserModel(
  id: 3,
  time :'10.5',
  text:'Fine thanks',


  ),
  UserModel(
  id:4 ,
  time :'10.8',
  text:'Please send me the report',
  ),
  UserModel(
  id: 5,
  time :'10.15',
  text:'your report is better than the last time',

  ),
  UserModel(
  id: 6,
  time :'10.15',
  text:'ok great thank you doctor',
  ),
    UserModel(
      id:7 ,
      text:'Hello',
      time: '11.0',
    ),
    UserModel(
      id: 8,
      time :'11.2',
      text:'Hi  ',
    ),
    UserModel(
      id: 9,
      time :'11.3',
      text:'How are you',
    ),
    UserModel(
      id: 10,
      time :'10.5',
      text:'Fine thanks',


    ),
    UserModel(
      id:11 ,
      time :'10.8',
      text:'Please send me the report',
    ),
    UserModel(
      id: 12,
      time :'10.15',
      text:'your report is better than the last time',

    ),
    UserModel(
      id: 13,
      time :'10.15',
      text:'ok great thank you doctor',
    ),
  ];
  final bool isSender;
  int x;
   ItemChatting(this.x,{Key? key, this.isSender =true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender?AlignmentDirectional.centerStart:AlignmentDirectional.centerEnd,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
        margin: EdgeInsets.only(top: 10.h),
        decoration: BoxDecoration(
            color: Color(isSender?0xffECECEC:0xff01B4D2),
            borderRadius: BorderRadius.circular(5.r)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(users[x].text,style: TextStyle(fontSize: 14.sp,fontFamily: FontFamily.regular,color: Colors.black)),
            SizedBox(
              width: 28.w,
            ),
            Text(users[x].time),
          ],
        ),
      ),
    );
  }
}
