import 'controller/opening_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OpeningScreen extends GetWidget<OpeningController> {
  const OpeningScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 90.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKhakiBeigeSimple,
                height: 300.adaptSize,
                width: 300.adaptSize,
              ),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                  width: 86.h,
                  text: "lbl_continue".tr.toUpperCase(),
                  margin: EdgeInsets.only(left: 40.h),
                  onPressed: () {
                    onTapCONTINUE();
                  }),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  onTapCONTINUE() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
