import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/widgets/items/item_bottom.dart';

import 'pages/appointments/view.dart';
import 'pages/chat/view.dart';
import 'pages/home/view.dart';
import 'pages/profile/view.dart';
import 'pages/upload_image/view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  var pages = [
    const HomePage(),
    const ChatPage(),
    const UploadImagePage(),
    const AppointmentsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
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
