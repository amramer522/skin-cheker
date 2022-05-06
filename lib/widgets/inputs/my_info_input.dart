import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyInfoInput extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final String iconPath;
  final bool isPassword;

  const MyInfoInput({Key? key, this.controller, this.hint="",required this.iconPath, this.isPassword= false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 15.h),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          isDense: true,
            prefixIcon: Padding(
              padding: EdgeInsets.all(10.r),
              child: Image.asset(
                iconPath,
                height: 20.h,
                width: 20.w,
              ),
            ),
            labelText: hint,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: const Color(0xff66BFC5).withOpacity(.65), width: 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: const Color(0xff66BFC5).withOpacity(.65), width: 2))),
      ),
    );
  }
}
