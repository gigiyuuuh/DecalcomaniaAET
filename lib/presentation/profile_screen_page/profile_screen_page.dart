import 'controller/profile_screen_controller.dart';
import 'models/profile_screen_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_leading_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';
import 'package:decalcomania_aet/presentation/map_screen_page/map_screen_page.dart';
import 'package:decalcomania_aet/presentation/search_screen_page/search_screen_page.dart';
import 'package:decalcomania_aet/presentation/skin_evaluation_analysis_page/skin_evaluation_analysis_page.dart';
import 'package:decalcomania_aet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  ProfileScreenController controller =
      Get.put(ProfileScreenController(ProfileScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 35.v),
              _buildAppBar(),
              Column(
                children: [
                  SizedBox(height: 16.v),
                  _buildEditProfile(),
                  SizedBox(height: 23.v),
                  Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillGray300,
                    child: Column(
                      children: [
                        Text(
                          "msg_skin_test_analysis2".tr,
                          style: CustomTextStyles.titleLargeBaloo2Bluegray400,
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_good_day_your_name".tr,
                            style: CustomTextStyles.bodySmallGray90001,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 306.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_we_are_pleased_to2".tr,
                                  style: CustomTextStyles.labelMediumff1e1c1d,
                                ),
                                TextSpan(
                                  text: "lbl_skin_type".tr,
                                  style: CustomTextStyles.bodySmallff638ea5,
                                ),
                                TextSpan(
                                  text: "lbl_is".tr,
                                  style: CustomTextStyles.labelMediumff1e1c1d,
                                ),
                                TextSpan(
                                  text: "msg_oily_and_acne_prone".tr,
                                  style: CustomTextStyles.bodySmallff638ea5,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        SizedBox(
                          width: 306.h,
                          child: Text(
                            "msg_the_ingredients".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            style: CustomTextStyles.labelMediumGray900,
                          ),
                        ),
                        SizedBox(height: 11.v),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return SizedBox(
      height: 138.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomAppBar(
            height: 88.v,
            leadingWidth: double.maxFinite,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgCursor,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 318.h,
                bottom: 64.v,
              ),
            ),
            styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100.adaptSize,
              width: 100.adaptSize,
              margin: EdgeInsets.only(left: 22.h),
              decoration: BoxDecoration(
                color: appTheme.pink100,
                borderRadius: BorderRadius.circular(
                  50.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 105.h,
                bottom: 13.v,
              ),
              child: Text(
                "lbl_your_name".tr,
                style: CustomTextStyles.titleLargeBaloo2Gray90023,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 59.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 17.adaptSize,
                    width: 17.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.gray40001,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "msg_skin_test_analysis".tr,
                      style: CustomTextStyles.bodySmallBluegray400.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfile() {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 26.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 111.h,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Text(
              "lbl_edit_profile".tr,
              style: CustomTextStyles.labelMediumBluegray400.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Container(
            width: 172.h,
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Text(
              "msg_retake_skin_test".tr,
              style: CustomTextStyles.labelMediumBluegray400.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLockGray900,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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
        return HomeScreenContainer1Screen();
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

  onTapImgGrid() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the bookmarkScreen when the action is triggered.
  onTapImgRewind() {
    Get.toNamed(
      AppRoutes.bookmarkScreen,
    );
  }
}
