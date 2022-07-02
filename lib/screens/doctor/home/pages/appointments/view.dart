import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';
import 'package:skin_checker/widgets/items/item_appointment.dart';

class AppointmentsPage extends StatelessWidget {
  const AppointmentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Appointments.tr()),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(top: 12.h, start: 40.w, end: 40.w),
          child: Column(
            children: [
              Container(
                color: const  Color(0xff66BFC5).withOpacity(.13),
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff66BFC5)),
                  onTap: (index) {},
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: FontFamily.bold,
                      height: 2.0),
                  tabs: [
                    Tab(
                      text: LocaleKeys.Current.tr(),
                    ),
                    Tab(
                      text: LocaleKeys.Completed.tr(),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 12.h,
              // ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60.h),
                        itemBuilder: (context, index) =>  ItemAppointment(index),
                        itemCount: 8),
                    ListView.builder(
                        padding: EdgeInsets.only(bottom: 60.h),

                        itemBuilder: (context, index) =>  ItemAppointment(index),
                        itemCount: 8),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
