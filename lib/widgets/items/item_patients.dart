import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/doctor/medical_card/view.dart';

import '../../gen/fonts.gen.dart';
import '../../helper/fake_data.dart';

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
class ItemPatients extends StatelessWidget {
 static List<UserModel> users =[

    UserModel(
      id: 0,
      name: ' Mohamed Ahmed ',
      backgroundimage:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',


    ),
    UserModel(
      id:1 ,
      name: ' Ahmed ALi ',
      backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',

    ),
    UserModel(
      id: 2,
      name: 'Mohamed Ashraf ',
      backgroundimage: 'https://images.pexels.com/photos/5917850/pexels-photo-5917850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed ali ',
      backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
   UserModel(
     id: 4,
     name: 'Mahamoud Ahmed ',
     backgroundimage:'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',


   ),
   UserModel(
     id:5 ,
     name: 'Mohamed helal ',
     backgroundimage:'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',

   ),
   UserModel(
     id: 6,
     name: ' Ashraf reda ',
     backgroundimage: 'https://images.pexels.com/photos/3152227/pexels-photo-3152227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
   ),
   UserModel(
     id: 7,
     name: 'ali mahmoud ',
     backgroundimage: 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
   ),
  ];
 int x  ;

  ItemPatients( this.x , {Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context,page: MedicalCardScreen());
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundImage: NetworkImage(users[x] .backgroundimage
            ),
            ),
          Text(
        users[x].name,
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontFamily.medium,
                height: 1.4,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
