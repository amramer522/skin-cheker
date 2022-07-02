import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_chat.dart';

class ChatPage extends StatelessWidget {
  final bool isDoctor;

  const ChatPage({Key? key, this.isDoctor = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Chat.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 12.h, start: 40.w, end: 40.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffECECEC).withOpacity(.5),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 11.w,
                  ),
                  Icon(
                    Icons.search,
                    size: 24.w,
                    color: const Color(0xff878787),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: isDoctor
                            ? LocaleKeys.Search.tr()
                            : LocaleKeys.SearchForDoctorOrPharmacy.tr(),
                        fillColor: Colors.transparent,
                        hintStyle: TextStyle(
                            fontSize: isDoctor ? 18.sp : 13.sp,
                            fontFamily: FontFamily.regular),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.only(bottom: 60.h),
              shrinkWrap: true,
              itemBuilder: (context, index) =>  ItemChat(index),
              itemCount: 10,
            ))
          ],
        ),
      ),
    );
  }
}
