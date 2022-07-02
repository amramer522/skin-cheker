import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/helper/helper_methods.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../screens/paient/home/near_by_doctors/doctor_details/view.dart';

class UserModel{
  final int id;
  final String name;
  final String backgroundimage;
  final String tel;
  final String location;
  UserModel({
    required this.id,
    required this.name,
    required this.backgroundimage,
    required this.tel,
    required this.location,

  });
}

class ItemDoctor extends StatelessWidget {
  static List<UserModel> users =[

    UserModel(
      id: 0,
      name: 'Amr Ali ',
      backgroundimage:'https://media.istockphoto.com/photos/portrait-of-happy-african-doctor-at-private-clinic-picture-id1189303662?k=20&m=1189303662&s=612x612&w=0&h=q3P08I8GlYRHIYFoN-h_WBM0PPGzO6ox4XJx8kxJRsc=',
      tel: '01234551',
      location: 'Mansuora'


    ),
    UserModel(
      id:1 ,
      name: 'Ali Amr ',
      backgroundimage:'https://img.freepik.com/free-photo/mature-doctor-hospital_256588-179.jpg?w=2000',
        tel: '01784551',
        location: 'Mansuora',
    ),
    UserModel(
      id: 2,
      name: 'Noha Ali ',
      backgroundimage: 'https://static.wixstatic.com/media/1f2ac1_9f9529a34a384b7d85f7c9ed9e9d34db~mv2.jpg/v1/fill/w_640,h_532,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/1f2ac1_9f9529a34a384b7d85f7c9ed9e9d34db~mv2.jpg',
      tel: '0123489',
      location: 'Mansuora', ),
    UserModel(
      id: 3,
      name: 'Nour ali ',
      backgroundimage: 'https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg?w=360',

      tel: '01234551',
      location: 'Damiatta',),
    UserModel(
      id: 4,
      name: 'Eid zin',
      backgroundimage:'https://primehealths.s3.ap-south-1.amazonaws.com/prime/doctors/622b35454baa9.png',

      tel: '019090551',
      location: 'Damiatta',

    ),
    UserModel(
      id:5 ,
      name: 'Amr omar ',
      backgroundimage:'https://cdn.askapollo.com/live/images/doctors/rheumatology/dr-ajit-kumar-surin-rheumatology-in-bhubaneswar.png',

      tel: '01234551',
      location: 'Cairo',
    ),
    UserModel(
      id: 6,
      name: ' Reda ',
      backgroundimage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTescL6GpLpNexNW6U5D2BHuD6W88bTYzUO_g&usqp=CAU',

      tel: '01289900',
      location: 'cairo',),
    UserModel(
      id: 7,
      name: 'ali mhmd ',
      backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',

      tel: '01234551',
      location: 'Sohag',),
  ];
  int x;
   ItemDoctor(this.x,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context, page: const DoctorDetailsScreen());
      },
      child: Container(
        margin: EdgeInsets.only(top: 15.h),
        decoration: BoxDecoration(
            color: const Color(0xffECECEC),
            borderRadius: BorderRadius.circular(5.r)),
        padding: EdgeInsetsDirectional.only(
            start: 8.w, end: 8.w, top: 7.h, bottom: 11.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.network(
                users[x] .backgroundimage,
                height: 70.h,
                width: 70.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(
                          text: users[x] .name,
                          style: TextStyle(
                              fontSize: 14.sp,
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
                    //   TextSpan(
                      //      text:'4',
                         //   style: TextStyle(
                            //    fontSize: 12.sp,
                              //  fontFamily: FontFamily.bold,
                               // color: const Color(0xff878787)))
                      ],
                    )
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: Container(
                        width: 25.w,
                        height: 31.h,
                        padding: EdgeInsets.all(6.r),
                        color: const Color(0xff01B4D2).withOpacity(.3),
                        child: Image.asset(
                          Assets.icons.message.path,
                          height: 20.h,
                          width: 100.w,
                        ),
                      ),
                    ),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: FontFamily.regular,
                        height: 1.9,
                        color: const Color(0xff878787)),
                    children: [
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
                        text: users[x] .tel,
                      ),
                      WidgetSpan(
                          child: Padding(
                        padding: EdgeInsetsDirectional.only(
                            bottom: 4.h, start: 16.w, end: 3.w),
                        child: Image.asset(
                          Assets.icons.place.path,
                          height: 18.h,
                          width: 18.w,
                        ),
                      )),
                      TextSpan(
                        text: users[x] .location,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
