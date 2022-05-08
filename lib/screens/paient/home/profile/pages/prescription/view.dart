import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_checker/generated/locale_keys.g.dart';
import 'package:skin_checker/helper/helper_methods.dart';
import 'package:skin_checker/widgets/app_bars/home_app_bar.dart';

import '../../../../../../../widgets/items/item_prescription.dart';
import 'pages/upload_file/view.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(text: LocaleKeys.Prescription.tr()),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 20.h),

                  shrinkWrap: true,
              itemBuilder: (context, index) => const ItemPrescription(),
              itemCount: 10,
            ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0.w),
        child: ElevatedButton(
            onPressed: () {
              navigateTo(context, page: const UploadFileScreen());
            },
            child: Text(
              LocaleKeys.UploadFile.tr(),
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
