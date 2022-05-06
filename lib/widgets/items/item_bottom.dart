import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBottom extends StatelessWidget {
  final String image;
  final int index;
  final int selectedIndex;
  final VoidCallback onPress;

  const ItemBottom(
      {Key? key,
      required this.image,
      required this.index,
      required this.selectedIndex,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Image.asset(
            image,
            height: 29.h,
            width: 29.w,
            color: Color(selectedIndex == index ? 0xff01B4D2 : 0xff878787),
          ),
          SizedBox(
            height: 3.h,
          ),
          selectedIndex == index
              ? CircleAvatar(
                  radius: 3.r,
                  backgroundColor: const Color(0xff01B4D2),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
