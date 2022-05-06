import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/fake_data.dart';
import 'package:skin_checker/widgets/items/item_chatting.dart';

import '../../../../../../gen/fonts.gen.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 32.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: const Icon(Icons.arrow_back_ios)),
                  CircleAvatar(
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: CircleAvatar(
                        radius: 6.w,
                        backgroundColor: const Color(0xff077436),
                      ),
                    ),
                    backgroundImage: NetworkImage(FakeData.person),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Dr.Mohamed\n",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: FontFamily.medium,
                            color: const Color(0xff707070))),
                    TextSpan(
                        text: "Active now",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: FontFamily.regular,
                            color: const Color(0xff077436))),
                  ])),
                  const Spacer(),
                  Image.asset(
                    Assets.icons.videoCall.path,
                    color: const Color(0xff2F3D3E),
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset(
                    Assets.icons.phone.path,
                    color: const Color(0xff2F3D3E),
                    height: 21.h,
                    width: 21.w,
                  ),
                  SizedBox(
                    width: 37.w,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        10,
                        (index) => ItemChatting(
                              isSender: index.isEven,
                            )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
              child: Row(
                children: [
                  Image.asset(
                    Assets.icons.attach.path,
                    height: 21.h,
                    width: 21.w,
                    color: const Color(0xff2F3D3E),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Image.asset(
                    Assets.icons.record.path,
                    height: 21.h,
                    width: 21.w,
                    color: const Color(0xff2F3D3E),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Image.asset(
                    Assets.icons.emoj.path,
                    height: 21.h,
                    width: 21.w,
                    color: const Color(0xff2F3D3E),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: FontFamily.regular,
                                color:
                                    const Color(0xff707070).withOpacity(.72)),
                            hintText: LocaleKeys.WriteAMessage.tr()),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Image.asset(
                    Assets.icons.send.path,
                    height: 24.h,
                    width: 24.w,
                    color: const Color(0xff2F3D3E),
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
