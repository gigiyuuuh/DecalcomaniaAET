// ignore: unused_import
import 'package:decalcomania_aet/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';
import '../foundation_section_recommendations_screen/widgets/foundationsectionrecommendationgrid_item_widget.dart';
import 'controller/foundation_section_recommendations_controller.dart';
import 'models/foundationsectionrecommendationgrid_item_model.dart';
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
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FoundationSectionRecommendationsScreen
    extends GetWidget<FoundationSectionRecommendationsController> {
  const FoundationSectionRecommendationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.v),
                      _buildCollectionRow(),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_face_makeup".tr,
                              style: theme.textTheme.titleSmall)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_foundation2".tr,
                              style: CustomTextStyles.titleLargeBaloo2Gray900)),
                      Container(
                          width: 306.h,
                          margin: EdgeInsets.only(left: 4.h, right: 12.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_the".tr,
                                    style:
                                        CustomTextStyles.labelMediumff1e1c1d),
                                TextSpan(
                                    text: "msg_foundation_is_a".tr,
                                    style: CustomTextStyles.labelMediumff638ea5)
                              ]),
                              textAlign: TextAlign.justify)),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_5_types_of_foundation".tr,
                              style: CustomTextStyles.titleLargeBaloo2Gray900)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 301.h,
                              margin: EdgeInsets.only(left: 8.h, right: 12.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_liquid_foundation2".tr,
                                        style: CustomTextStyles
                                            .labelMediumff638ea5),
                                    TextSpan(
                                        text: "msg_liquid_foundation3".tr,
                                        style: CustomTextStyles
                                            .labelMediumff1e1c1d),
                                    TextSpan(
                                        text: "msg_cream_foundation".tr,
                                        style: CustomTextStyles
                                            .labelMediumff638ea5)
                                  ]),
                                  textAlign: TextAlign.justify))),
                      SizedBox(height: 1.v),
                      CustomElevatedButton(
                          width: 110.h,
                          text: "lbl_read_more".tr,
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle: CustomTextStyles.labelLargeMedium,
                          alignment: Alignment.center),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_local_brands_that".tr,
                              style: CustomTextStyles
                                  .labelLargeBluegray400Medium)),
                      SizedBox(height: 17.v),
                      _buildFoundationSectionRecommendationGrid()
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
            child: Stack(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x200),
              SizedBox(
                  height: 51.v,
                  width: double.maxFinite,
                  child: Stack(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgKhakiBeigeSimple51x200),
                    Container(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.fromLTRB(20.h, 8.v, 316.h, 19.v),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGrid,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgGrid();
                              }),
                          CustomImageView(
                              imagePath: ImageConstant.imgGrid,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.center)
                        ]))
                  ]))
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 21.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRewind,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapImgRewind();
                    }),
                CustomImageView(
                    imagePath: ImageConstant.imgBagBlueGray900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center)
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildCollectionRow() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("lbl_collection".tr,
                  style: CustomTextStyles.labelLargeGray400)),
          Text("lbl_face".tr,
              style: CustomTextStyles.labelLargeBluegray400
                  .copyWith(decoration: TextDecoration.underline)),
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("lbl_brows".tr,
                  style: CustomTextStyles.labelLargeGray400)),
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("lbl_eyes".tr,
                  style: CustomTextStyles.labelLargeGray400)),
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("lbl_cheek".tr,
                  style: CustomTextStyles.labelLargeGray400)),
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("lbl_lips".tr,
                  style: CustomTextStyles.labelLargeGray400))
        ]));
  }

  /// Section Widget
  Widget _buildFoundationSectionRecommendationGrid() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 121.v,
                crossAxisCount: 3,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.h),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.foundationSectionRecommendationsModelObj.value
                .foundationsectionrecommendationgridItemList.value.length,
            itemBuilder: (context, index) {
              FoundationsectionrecommendationgridItemModel model = controller
                  .foundationSectionRecommendationsModelObj
                  .value
                  .foundationsectionrecommendationgridItemList
                  .value[index];
              return FoundationsectionrecommendationgridItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.homeBluegray400:
        return AppRoutes.homeScreenContainerPage;
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
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
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

  /// Navigates to the settingsScreen when the action is triggered.
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
