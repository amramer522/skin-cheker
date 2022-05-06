import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/screens/doctor/medical_card/view.dart';

import '../../gen/fonts.gen.dart';
import '../../helper/fake_data.dart';

class ItemPatients extends StatelessWidget {
  const ItemPatients({Key? key}) : super(key: key);

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
            backgroundImage: NetworkImage(
              FakeData.person,
            ),
          ),
          Text(
            "Mohamed\nAhmed",
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
