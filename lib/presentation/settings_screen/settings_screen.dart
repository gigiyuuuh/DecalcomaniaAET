import 'package:decalcomania_aet/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';

import 'controller/settings_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
// ignore: unused_import
import 'package:decalcomania_aet/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:decalcomania_aet/presentation/map_screen_page/map_screen_page.dart';
import 'package:decalcomania_aet/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:decalcomania_aet/presentation/search_screen_page/search_screen_page.dart';
import 'package:decalcomania_aet/presentation/skin_evaluation_analysis_page/skin_evaluation_analysis_page.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 29.h, top: 66.v, right: 29.h),
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
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtEditProfile();
                              },
                              child: Container(
                                  width: 60.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 1.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder10),
                                  child: Text("lbl_edit_profile".tr,
                                      style: CustomTextStyles
                                          .labelMediumBluegray400
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))))),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: _buildSkinTestAnalysis(
                              trophyImage: ImageConstant.imgBell,
                              privacy: "lbl_notification".tr,
                              onTapSkinTestAnalysis: () {
                                onTapNotification();
                              })),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_the_skin_test_analysis".tr,
                              style: CustomTextStyles.bodySmallBluegray400
                                  .copyWith(
                                      decoration: TextDecoration.underline))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: _buildSkinTestAnalysis(
                              trophyImage: ImageConstant.imgTrophy,
                              privacy: "lbl_privacy".tr,
                              onTapSkinTestAnalysis: () {
                                onTapSkinTestAnalysis();
                              })),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: _buildSkinTestAnalysis(
                              trophyImage: ImageConstant.imgFavorite,
                              privacy: "lbl_support".tr,
                              onTapSkinTestAnalysis: () {
                                onTapSkinTestAnalysis1();
                              })),
                      SizedBox(height: 4.v),
                      _buildBookmark(),
                      SizedBox(height: 60.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 6.v)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogOut();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_log_out".tr,
                                            style: CustomTextStyles
                                                .titleLargeBaloo2Red900)))
                              ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: SizedBox(
            height: 51.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x100),
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 21.v),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                    onTap: () {
                      onTapImgClose();
                    })
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildBookmark() {
    return GestureDetector(
        onTap: () {
          onTapBookmark();
        },
        child: SizedBox(
            height: 33.v,
            width: 291.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text("lbl_bookmark".tr,
                          style: CustomTextStyles.titleLargeBaloo2Gray900))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(top: 3.v, bottom: 4.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBag,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 1.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildSkinTestAnalysis({
    required String trophyImage,
    required String privacy,
    Function? onTapSkinTestAnalysis,
  }) {
    return GestureDetector(
        onTap: () {
          onTapSkinTestAnalysis!.call();
        },
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: trophyImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(privacy,
                  style: CustomTextStyles.titleLargeBaloo2Gray900
                      .copyWith(color: appTheme.gray900))),
          const Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 7.v))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.homeBluegray400:
        return AppRoutes.homeScreenContainer1Screen;
      case BottomBarEnum.rewind:
        return AppRoutes.searchScreenPage;
      case BottomBarEnum.info:
        return AppRoutes.skinEvaluationAnalysisPage;
      case BottomBarEnum.linkedin:
        return AppRoutes.mapScreenPage;
      case BottomBarEnum.lock:
        return AppRoutes.profileScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainer1Screen:
        return const HomeScreenContainer1Screen();
      case AppRoutes.searchScreenPage:
        return SearchScreenPage();
      case AppRoutes.skinEvaluationAnalysisPage:
        return SkinEvaluationAnalysisPage();
      case AppRoutes.mapScreenPage:
        return MapScreenPage();
      case AppRoutes.profileScreenPage:
        return const ProfileScreenPage();
      default:
        return const DefaultWidget();
    }
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapTxtEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  onTapImgClose() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }

  /// Navigates to the privacyScreen when the action is triggered.
  onTapSkinTestAnalysis() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the supportScreen when the action is triggered.
  onTapSkinTestAnalysis1() {
    Get.toNamed(
      AppRoutes.supportScreen,
    );
  }

  /// Navigates to the bookmarkScreen when the action is triggered.
  onTapBookmark() {
    Get.toNamed(
      AppRoutes.bookmarkScreen,
    );
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapTxtLogOut() {
    Get.toNamed(
      AppRoutes.logInPageScreen,
    );
  }
}
