import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/gen/fonts.gen.dart';

import '../../gen/assets.gen.dart';
import '../notification_icon.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isSecond;
  final String text;
  final bool withoutNotification;

  const HomeAppBar(
      {Key? key,
      this.isSecond = true,
      this.text = '',
      this.withoutNotification = false})
      : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(55.h);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SizedBox(
            width: 34.w,
          ),
          widget.isSecond
              ? IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios))
              : Image.asset(
                  Assets.images.appLogo.path,
                  height: 41.h,
                  width: 38.w,
                ),
          Expanded(
              child: Center(
                  child: Text(widget.text,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: FontFamily.bold,
                          height: 2.8)))),
          widget.withoutNotification
              ? const SizedBox.shrink()
              : const NotificationIcon(),
          SizedBox(
            width: 39.w,
          ),
        ],
      ),
    );
  }
}
