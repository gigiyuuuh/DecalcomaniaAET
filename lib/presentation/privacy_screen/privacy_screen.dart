import 'controller/privacy_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
// ignore: unused_import
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends GetWidget<PrivacyController> {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 20.v),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 5.v, bottom: 5.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_privacy".tr,
                                style: theme.textTheme.headlineSmall))
                      ]),
                  SizedBox(height: 50.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 2.h),
                      child: _buildLocationRow(
                          locationText: "msg_safety_and_security".tr,
                          onTapLocationRow: () {
                            onTapLocationRow();
                          })),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 2.h),
                      child: _buildLocationRow(
                          locationText: "lbl_location".tr,
                          onTapLocationRow: () {
                            onTapLocationRow1();
                          })),
                  SizedBox(height: 25.v),
                  _buildPrivacyPolicyRow(),
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
            child: Stack(alignment: Alignment.centerLeft, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x100),
              AppbarSubtitle(
                  text: "lbl_back".tr,
                  margin: EdgeInsets.fromLTRB(35.h, 9.v, 235.h, 26.v),
                  onTap: () {
                    onTapBACK();
                  })
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 21.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgClose();
                    })
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildPrivacyPolicyRow() {
    return GestureDetector(
        onTap: () {
          onTapPrivacyPolicyRow();
        },
        child: Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_privacy_policy".tr,
                      style: theme.textTheme.titleLarge),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])));
  }

  /// Common widget
  Widget _buildLocationRow({
    required String locationText,
    Function? onTapLocationRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapLocationRow!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(locationText,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the safetyScreen when the action is triggered.
  onTapLocationRow() {
    Get.toNamed(
      AppRoutes.safetyScreen,
    );
  }

  /// Navigates to the locationScreen when the action is triggered.
  onTapLocationRow1() {
    Get.toNamed(
      AppRoutes.locationScreen,
    );
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapPrivacyPolicyRow() {
    Get.toNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }

  onTapImgClose() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }
}
