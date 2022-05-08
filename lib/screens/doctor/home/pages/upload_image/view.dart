import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skin_checker/gen/assets.gen.dart';
import 'package:skin_checker/gen/fonts.gen.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

class UploadImagePage extends StatefulWidget {
  UploadImagePage({Key? key}) : super(key: key);

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.uploadPhotoSequence.tr()),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: GestureDetector(
            onTap: () async {
              await ImagePicker.platform.getMultiImage().then((value) {
                if (value != null) {
                  value.forEach((element) {
                    images.add(File(element.path));
                  });
                  setState(() {

                  });
                }
              });
            },
            child: images.isNotEmpty?Wrap(
              children: List.generate(
                  images.length,
                      (index) => Image.file(
                    images[index],
                    height: 100.h,
                    width: 100.w,
                  )),
            ):Container(
              height: 370.h,
              width: 296.w,
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(LocaleKeys.DragAndDropPhotosHere.tr(),
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: FontFamily.medium,
                                color: Colors.black)),
                        SizedBox(
                          height: 36.h,
                        ),
                        Image.asset(Assets.images.uploadImages.path,
                            fit: BoxFit.fill,
                            width: 136.21.w,
                            height: 143.67.h),
                      ],
                    ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.images.dashedBorder.path))),
            ),
          ),
        ),
      ),
    );
  }
}
