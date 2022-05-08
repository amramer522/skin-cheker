import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/screens/doctor/home/pages/appointments/view.dart';
import 'package:skin_checker/screens/doctor/home/pages/upload_image/view.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/items/item_bottom.dart';
import '../../doctor/home/pages/chat/view.dart';
import 'home/view.dart';
import 'profile/view.dart';

class PatientHomeScreen extends StatefulWidget {
  const PatientHomeScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeScreen> createState() => _PatientHomeScreenState();
}

class _PatientHomeScreenState extends State<PatientHomeScreen> {
  int selectedIndex = 0;
  var pages = [
    const PatientHomePage(),
    const ChatPage(),
     UploadImagePage(),
    const AppointmentsPage(),
    const PatientProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          pages[selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 75.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 55.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(Assets.images.bottomNav.path))),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                const Spacer(),
                                Expanded(
                                  flex: 2,
                                  child: ItemBottom(
                                      image: Assets.icons.home.path,
                                      index: 0,
                                      selectedIndex: selectedIndex,
                                      onPress: () {
                                        selectedIndex = 0;
                                        setState(() {});
                                      }),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: ItemBottom(
                                      image: Assets.icons.chat.path,
                                      index: 1,
                                      selectedIndex: selectedIndex,
                                      onPress: () {
                                        selectedIndex = 1;
                                        setState(() {});
                                      }),
                                ),
                                const Spacer()
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                const Spacer(),
                                Expanded(
                                  flex: 2,
                                  child: ItemBottom(
                                      image: Assets.icons.appointments.path,
                                      index: 3,
                                      selectedIndex: selectedIndex,
                                      onPress: () {
                                        selectedIndex = 3;
                                        setState(() {});
                                      }),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: ItemBottom(
                                      image: Assets.icons.profile.path,
                                      index: 4,
                                      selectedIndex: selectedIndex,
                                      onPress: () {
                                        selectedIndex = 4;
                                        setState(() {});
                                      }),
                                ),
                                const Spacer(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: FloatingActionButton(
                      onPressed: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: Image.asset(Assets.icons.uploadImage.path),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
