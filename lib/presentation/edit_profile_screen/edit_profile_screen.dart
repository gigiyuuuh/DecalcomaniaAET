import 'controller/edit_profile_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 32.h, top: 64.v, right: 32.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.pink100,
                                  borderRadius: BorderRadius.circular(50.h)))),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_your_name".tr,
                              style:
                                  CustomTextStyles.headlineSmallBaloo2Gray900)),
                      SizedBox(height: 38.v),
                      Text("lbl_edit_icon".tr,
                          style: CustomTextStyles.titleLargeBaloo2Gray900),
                      SizedBox(height: 17.v),
                      Text("lbl_edit_name".tr,
                          style: CustomTextStyles.titleLargeBaloo2Gray900),
                      SizedBox(height: 21.v),
                      Text("lbl_phone_number".tr,
                          style: CustomTextStyles.titleLargeBaloo2Gray900),
                      SizedBox(height: 16.v),
                      Text("lbl_email_address".tr,
                          style: CustomTextStyles.titleLargeBaloo2Gray900),
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
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x200),
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

  /// Navigates to the settingsScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
