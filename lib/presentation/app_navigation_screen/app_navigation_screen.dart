import 'controller/app_navigation_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Opening Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.openingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Data Collection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dataCollectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "User Rights".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.userRightsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Policy Changes".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.policyChangesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Safety".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.safetyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy Policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Help Center".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Support".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.supportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookmark".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookmarkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LOG IN PAGE".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2nd Opening Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ndOpeningScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Foundation Section (Recommendations) Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.foundationSectionRecommendationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SIGN UP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
