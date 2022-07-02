import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../gen/fonts.gen.dart';
import '../../screens/doctor/home/pages/chat/chatting/view.dart';
class UserModel{
  final int id;
  final String name;
  final String backgroundimage;
  final String time;
  final String text;

  UserModel({
    required this.id,
    required this.name,
    required this.backgroundimage,
    required this.time,
    required this.text,

  });
}
class ItemChat extends StatelessWidget {
  static List<UserModel> users =[
    UserModel(
  id:0 ,
  name: 'Mohamed Ahmed',
  backgroundimage:'https://images.pexels.com/photos/5917850/pexels-photo-5917850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  time: '        10.30',
    text:'Hello',
  ),
  UserModel(
  id: 1,
  name: 'Mohamed Ashraf ',
  backgroundimage: 'https://media.istockphoto.com/photos/silhouette-of-profile-guy-in-shirt-with-white-button-in-aqua-menthe-picture-id1206439390?k=20&m=1206439390&s=170667a&w=0&h=wDX4xov95UOzjOgOkTqRurDiTepjhqAA7Q2iFofrO5c=',
    time :'            10.0',
    text:'Thanks ',
  ),
  UserModel(
  id: 2,
  name: 'Ahmed ali ',
  backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    time :'                          9.30',
    text:'please send me report',
  ),
  UserModel(
  id: 3,
  name: 'Mahamoud Alaa ',
  backgroundimage:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
    time :'              9.0',
    text:'please send me tests',


  ),
  UserModel(
  id:4 ,
  name: 'Mohamed helal ',
  backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    time :'               8.30',
    text:'How are you doctor',
  ),
  UserModel(
  id: 5,
  name: ' Ashraf reda ',
  backgroundimage: 'https://images.pexels.com/photos/3152227/pexels-photo-3152227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    time :'                        8.0',
    text:'Thanks',

  ),
  UserModel(
  id: 6,
  name: 'ali mahmoud ',
  backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    time :'                        7.0',
    text:'How are you doctor',
  ),
    UserModel(
      id:7 ,
      name: 'Mohamed helal ',
      backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      time :'              6.30',
      text:'How are you doctor',
    ),
  ];
  int x;
   ItemChat(this.x,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context,page: ChattingScreen());
      },
      child: Container(
        height: 76.h,
        padding: EdgeInsetsDirectional.only(start: 8.w,top: 10.h,bottom: 3.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
            color:const  Color(0xffE7F7F9),
      ),
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.network(
                users[x].backgroundimage,
                height: 70.h,
                width: 70.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: users[x].name +"\t\t",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: FontFamily.medium,
                        color: Colors.black),
                  ),

                  TextSpan(
                    text: users[x].time + "\n"+ "\n"+ "\n"+ "\n"+ "\n"+ "\n",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: FontFamily.regular,
                          color:const  Color(0xff707070))
                  ),
                  TextSpan(
                    text:users[x].text,
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontFamily: FontFamily.regular,
                          height: 2.2,
                          color: const Color(0xff707070))
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
