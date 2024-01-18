import 'controller/privacy_policy_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 21.v),
                child: Column(children: [
                  Text("lbl_privacy_policy".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 19.v),
                  _buildPrivacyPolicyDataCollection(),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: _buildPrivacyPolicyPolicyChanges(
                          policyChangesText: "lbl_user_rights".tr,
                          onTapPrivacyPolicyPolicyChanges: () {
                            onTapPrivacyPolicyPolicyChanges();
                          })),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: _buildPrivacyPolicyPolicyChanges(
                          policyChangesText: "lbl_policy_changes".tr,
                          onTapPrivacyPolicyPolicyChanges: () {
                            onTapPrivacyPolicyPolicyChanges1();
                          })),
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

  /// Section Widget
  Widget _buildPrivacyPolicyDataCollection() {
    return GestureDetector(
        onTap: () {
          onTapPrivacyPolicyDataCollection();
        },
        child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_data_collection".tr,
                      style: theme.textTheme.titleLarge),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize)
                ])));
  }

  /// Common widget
  Widget _buildPrivacyPolicyPolicyChanges({
    required String policyChangesText,
    Function? onTapPrivacyPolicyPolicyChanges,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPrivacyPolicyPolicyChanges!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(policyChangesText,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the privacyScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }

  /// Navigates to the dataCollectionScreen when the action is triggered.
  onTapPrivacyPolicyDataCollection() {
    Get.toNamed(
      AppRoutes.dataCollectionScreen,
    );
  }

  /// Navigates to the userRightsScreen when the action is triggered.
  onTapPrivacyPolicyPolicyChanges() {
    Get.toNamed(
      AppRoutes.userRightsScreen,
    );
  }

  /// Navigates to the policyChangesScreen when the action is triggered.
  onTapPrivacyPolicyPolicyChanges1() {
    Get.toNamed(
      AppRoutes.policyChangesScreen,
    );
  }
}
