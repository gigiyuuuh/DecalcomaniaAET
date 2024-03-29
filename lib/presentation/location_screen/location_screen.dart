import 'controller/location_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class LocationScreen extends GetWidget<LocationController> {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_location".tr,
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text("lbl_location".tr,
                                        style: theme.textTheme.titleLarge)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 4.v),
                                    child: Text("msg_private_location".tr,
                                        style: theme.textTheme.titleLarge)),
                                Obx(() => CustomSwitch(
                                    value: controller.isSelectedSwitch1.value,
                                    onChange: (value) {
                                      controller.isSelectedSwitch1.value =
                                          value;
                                    }))
                              ])),
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

  onTapBACK() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapImgClose() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }
}
