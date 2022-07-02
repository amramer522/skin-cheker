import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../screens/doctor/home/pages/chat/chatting/view.dart';
class UserModel{
  final int id;
  final String name;
  final String backgroundimage;
  final String location;
  final String  tel ;
  final String date;

  UserModel({
    required this.id,
    required this.name,
    required this.backgroundimage,
    required this.location,
    required this.tel,
    required this.date,


  });
}
class ItemAppointment extends StatelessWidget {
  static List<UserModel> users =[

    UserModel(
      id: 0,
      name: 'Mohamed Ahmed ',
      backgroundimage:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
      date:'20/ feb /2022',
      tel: '0123456770',
      location: 'Hay-Elgamaa',

    ),
    UserModel(
      id:1 ,
      name: 'Mohamed Ahmed ',
      backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'20/ feb /2022',
      tel: '0123456770',
      location: 'ELstad',
    ),
    UserModel(
      id: 2,
      name: 'Mohamed Ashraf ',
      backgroundimage: 'https://images.pexels.com/photos/3152227/pexels-photo-3152227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'21/ feb /2022',
      tel: '0123456770',
      location: 'Sandob',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed ali ',
      backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'22/ feb /2022',
      tel: '0123456770',
      location: 'Gedela',
    ),
    UserModel(
      id: 4,
      name: 'Mahamoud Ahmed ',
      backgroundimage:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
      date:'23/ feb /2022',
      tel:'0123456770',
      location: 'Torial',

    ),
    UserModel(
      id:5 ,
      name: 'Mohamed helal ',
      backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'23/ feb /2022',
      tel: '0123456770',
      location: 'Jehan',
    ),
    UserModel(
      id: 6,
      name: ' Ashraf reda ',
      backgroundimage: 'https://images.pexels.com/photos/5917850/pexels-photo-5917850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'24/ feb /2022',
      tel: '0123456770',
      location: 'Adab',
    ),
    UserModel(
      id: 7,
      name: 'ali mahmoud ',
      backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      date:'26/ feb /2022',
      tel: '0123456770',
      location: 'Mansoura',
    ),
  ];
  int x ;
   ItemAppointment(this.x,{Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // navigateTo(context,page: const MedicalCardScreen());
      },
      child: Container(
        height: 133.h,
        width: 296.w,
        padding: EdgeInsetsDirectional.only(top: 8.h, start: 11.w, bottom: 10.h, end: 17.w),
        margin: EdgeInsetsDirectional.only(top: 15.h),
        decoration: BoxDecoration(
            color: const Color(0xffECECEC), borderRadius: BorderRadius.circular(5.r)),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Image.network(
                      users[x] .backgroundimage,
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
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: FontFamily.regular,
                          height: 1.9,
                          color: const Color(0xff878787)),
                      children: [
                        TextSpan(
                          text: users[x].name + "\n",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: FontFamily.medium,
                              color: Colors.black),
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.only(bottom: 4.h, end: 3.w),
                          child: Image.asset(
                            Assets.icons.appointments.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: users[x].date+ " , ",
                        ),
                        TextSpan(
                          text: FakeData.time + "\n",
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding:
                              EdgeInsetsDirectional.only(bottom: 4.h, end: 3.w),
                          child: Image.asset(
                            Assets.icons.phone.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: users[x].tel,
                        ),
                        WidgetSpan(
                            child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              bottom: 4.h, start: 3.w, end: 3.w),
                          child: Image.asset(
                            Assets.icons.place.path,
                            height: 18.h,
                            width: 18.w,
                          ),
                        )),
                        TextSpan(
                          text: users[x].location,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    navigateTo(context,page: const ChattingScreen());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Container(
                      width: 51.w,
                      height: 31.h,
                      padding: EdgeInsets.all(6.r),
                      color: const Color(0xff01B4D2).withOpacity(.3),
                      child: Image.asset(
                        Assets.icons.message.path,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.reminder.tr(),
                        style: const TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
