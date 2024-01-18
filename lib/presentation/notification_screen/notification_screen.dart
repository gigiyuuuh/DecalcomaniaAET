import 'controller/notification_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 17.v),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBell,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(top: 10.v, bottom: 6.v)),
                    Text("lbl_notification".tr,
                        style: CustomTextStyles.headlineSmallBaloo2Gray900)
                  ]),
                  SizedBox(height: 42.v),
                  _buildShowNotifications(),
                  SizedBox(height: 16.v),
                  _buildLockScreenNotifications(),
                  SizedBox(height: 16.v),
                  _buildPushNotifications(),
                  SizedBox(height: 17.v),
                  _buildAllowSound(),
                  SizedBox(height: 15.v),
                  _buildAllowVibration(),
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
            child: Stack(alignment: Alignment.topCenter, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x100),
              AppbarSubtitle(
                  text: "lbl_back".tr,
                  margin: EdgeInsets.fromLTRB(33.h, 9.v, 285.h, 22.v),
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

  /// Section Widget
  Widget _buildShowNotifications() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_show_notifications".tr,
              style: CustomTextStyles.titleLargeBaloo2),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildLockScreenNotifications() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("msg_lock_screen_notifications".tr,
          style: CustomTextStyles.titleLargeBaloo2),
      Obx(() => CustomSwitch(
          margin: EdgeInsets.only(left: 13.h, top: 3.v),
          value: controller.isSelectedSwitch1.value,
          onChange: (value) {
            controller.isSelectedSwitch1.value = value;
          }))
    ]);
  }

  /// Section Widget
  Widget _buildPushNotifications() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_push_notifications".tr,
              style: CustomTextStyles.titleLargeBaloo2),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 4.v),
              value: controller.isSelectedSwitch2.value,
              onChange: (value) {
                controller.isSelectedSwitch2.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildAllowSound() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_allow_sound".tr, style: CustomTextStyles.titleLargeBaloo2),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
              value: controller.isSelectedSwitch3.value,
              onChange: (value) {
                controller.isSelectedSwitch3.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildAllowVibration() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_allow_vibration".tr,
              style: CustomTextStyles.titleLargeBaloo2),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 5.v),
              value: controller.isSelectedSwitch4.value,
              onChange: (value) {
                controller.isSelectedSwitch4.value = value;
              }))
        ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
