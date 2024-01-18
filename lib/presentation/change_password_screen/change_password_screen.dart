import 'controller/change_password_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_change_password".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("msg_input_current_password".tr,
                              style: CustomTextStyles.titleLargeRegular)),
                      SizedBox(height: 33.v),
                      Divider(indent: 8.h),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("msg_input_new_password".tr,
                              style: CustomTextStyles.titleLargeRegular)),
                      SizedBox(height: 33.v),
                      Divider(indent: 8.h),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("msg_re_enter_new_password".tr,
                              style: CustomTextStyles.titleLargeRegular)),
                      SizedBox(height: 35.v),
                      Divider(indent: 5.h),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          height: 33.v,
                          width: 102.h,
                          text: "lbl_save".tr,
                          buttonTextStyle: CustomTextStyles.titleLargeGray50,
                          onPressed: () {
                            onTapSave();
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 51.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x100),
              AppbarSubtitle(
                  text: "lbl_back".tr,
                  margin: EdgeInsets.fromLTRB(31.h, 12.v, 287.h, 19.v),
                  onTap: () {
                    onTapBACK();
                  })
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgClose,
              margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 20.v))
        ]);
  }

  /// Navigates to the safetyScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.safetyScreen,
    );
  }

  /// Navigates to the privacyScreen when the action is triggered.
  onTapSave() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }
}
