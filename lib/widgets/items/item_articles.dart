import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/helper/fake_data.dart';

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

class ItemArticles extends StatelessWidget {
  static List<UserModel> users =[

    UserModel(
      id: 0,
      name: 'The last articles about skin cancer ',
      backgroundimage:'https://4ag46i294nta1038p13v77x1-wpengine.netdna-ssl.com/wp-content/uploads/Screen-Shot-2019-05-31-at-10.29.14-AM-1024x880.png',


    ),
    UserModel(
      id:1 ,
      name: 'The last articles about skin cancer',
      backgroundimage:'https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fsrep16908/MediaObjects/41598_2015_Article_BFsrep16908_Fig1_HTML.jpg',

    ),
    UserModel(
      id: 2,
      name: 'The last articles about skin cancer ',
      backgroundimage: 'https://4ag46i294nta1038p13v77x1-wpengine.netdna-ssl.com/wp-content/uploads/Screen-Shot-2019-05-31-at-10.29.14-AM-1024x880.png',
    ),
    UserModel(
      id: 3,
      name: 'The last articles about skin cancer',
      backgroundimage: 'https://www.walshmedicalmedia.com/admin/citation-images/hereditary-genetics-current-research-citation.png',
    ),
    UserModel(
      id: 4,
      name: 'The last articles about skin cancer ',
      backgroundimage:'https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fsrep16908/MediaObjects/41598_2015_Article_BFsrep16908_Fig1_HTML.jpg',


    ),
    UserModel(
      id:5 ,
      name: 'The last articles about skin cancer ',
      backgroundimage:'https://4ag46i294nta1038p13v77x1-wpengine.netdna-ssl.com/wp-content/uploads/Screen-Shot-2019-05-31-at-10.29.14-AM-1024x880.png',

    ),
  ];

  int x;
   ItemArticles(this.x,{Key? key}) : super(key: key);

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
            users[x].backgroundimage,
            fit: BoxFit.fill,
            height: 112.h,
          ),
          SizedBox(height: 4.h,),
          Text(users[x].name,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: FontFamily.bold,
                  color: Colors.black))
        ],
      ),
    );
  }
}
