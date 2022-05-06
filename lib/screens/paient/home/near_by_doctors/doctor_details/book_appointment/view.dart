import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../../../../gen/fonts.gen.dart';
import 'controller.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  final c = BookAppointmentController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Appointme.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 183.h,
              padding: EdgeInsetsDirectional.only(
                  start: 15.w, end: 15.w, top: 16.h, bottom: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Colors.grey.withOpacity(.5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (c.selectedMonth > 1) {
                              c.selectedMonth--;
                              setState(() {});
                            }
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 17.sp,
                          )),
                      Expanded(
                        child: Text(c.months[c.selectedMonth - 1],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: FontFamily.medium,
                                color: Colors.black)),
                      ),
                      GestureDetector(
                          onTap: () {
                            if (c.selectedMonth < 12) {
                              c.selectedMonth++;
                              setState(() {});
                            }
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 17.sp,
                          )),
                    ],
                  ),
                  // SizedBox(
                  //   height: 16.h,
                  // ),
                  // Row(
                  //   children: List.generate(c.daysOfWeek.length,
                  //       (index) => Expanded(child: Center(child: Text(c.daysOfWeek[index])))),
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GridView.count(
                    controller: ScrollController(keepScrollOffset: false),
                    crossAxisCount: 7,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      c.numOfMonthDays[c.selectedMonth - 1] + 1,
                      (index) => GestureDetector(
                        onTap: () {
                          c.selectedDay = index;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsetsDirectional.only(start: 1.w, top: 1.h),
                          decoration: BoxDecoration(
                            color: index == 0
                                ? null
                                : index == c.selectedDay
                                    ? Colors.blue.withOpacity(.5)
                                    : Colors.grey.withOpacity(.2),
                          ),
                          width: 20.w,
                          height: 20.h,
                          child: Center(
                            child: Text(
                              index == 0 ? "" : index.toString(),
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: FontFamily.medium,
                                  color: index == c.selectedDay
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(LocaleKeys.Time.tr(),
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: FontFamily.bold,
                    color: Colors.black)),
            SizedBox(
              height: 5.h,
            ),
            Wrap(
              children: List.generate(
                  10,
                  (index) => GestureDetector(
                        onTap: () {
                          c.selectedTimeIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          margin:
                              EdgeInsetsDirectional.only(start: 4.w, top: 4.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.w,
                                  color: Color(c.selectedTimeIndex == index
                                      ? 0xff01B4D2
                                      : 0xff878787)),
                              borderRadius: BorderRadius.circular(5.r),
                              color: c.selectedTimeIndex == index
                                  ? const Color(0xff01B4D2)
                                  : Colors.transparent),
                          child: Text(
                            "9:00 Am",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: FontFamily.bold,
                                height: 1.2.h,
                                color: c.selectedTimeIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    print("Selected Day is : "+c.selectedDay.toString());
                    print("Selected Month is : "+c.selectedMonth.toString());
                  },
                  child: Text(
                    LocaleKeys.BookAnAppointment.tr(),
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
