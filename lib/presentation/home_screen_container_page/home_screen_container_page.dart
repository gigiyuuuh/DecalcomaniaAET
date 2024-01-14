import '../home_screen_container_page/widgets/foundationtext_item_widget.dart';
import '../home_screen_container_page/widgets/text_item_widget.dart';
import 'controller/home_screen_container_controller.dart';
import 'models/foundationtext_item_model.dart';
import 'models/home_screen_container_model.dart';
import 'models/text_item_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerPage extends StatelessWidget {
  HomeScreenContainerPage({Key? key}) : super(key: key);

  HomeScreenContainerController controller =
      Get.put(HomeScreenContainerController(HomeScreenContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Column(children: [
                  _buildCollection(),
                  SizedBox(height: 8.v),
                  Divider(color: appTheme.gray40002),
                  SizedBox(height: 8.v),
                  _buildAd1(),
                  SizedBox(height: 28.v),
                  _buildFoundationText(),
                  SizedBox(height: 13.v),
                  CustomElevatedButton(
                      width: 110.h,
                      text: "lbl_view_more".tr,
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle: CustomTextStyles.labelLargeMedium),
                  SizedBox(height: 31.v),
                  Text("msg_this_week_s_people_s".tr,
                      style: CustomTextStyles.labelLargeBluegray400Medium),
                  SizedBox(height: 9.v),
                  _buildText()
                ]))));
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
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x360),
              SizedBox(
                  height: 51.v,
                  width: double.maxFinite,
                  child: Stack(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgKhakiBeigeSimple51x360),
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
  Widget _buildCollection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 21.v,
              width: 88.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_collection".tr,
                        style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_collection".tr,
                        style: theme.textTheme.labelLarge))
              ])),
          Container(
              height: 21.v,
              width: 35.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_face".tr, style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_face".tr, style: theme.textTheme.labelLarge))
              ])),
          Container(
              height: 21.v,
              width: 50.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_brows".tr,
                        style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_brows".tr, style: theme.textTheme.labelLarge))
              ])),
          Container(
              height: 21.v,
              width: 34.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_eyes".tr, style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_eyes".tr, style: theme.textTheme.labelLarge))
              ])),
          Container(
              height: 21.v,
              width: 46.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_cheek".tr,
                        style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_cheek".tr, style: theme.textTheme.labelLarge))
              ])),
          Container(
              height: 21.v,
              width: 31.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_lips".tr, style: theme.textTheme.labelLarge)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_lips".tr, style: theme.textTheme.labelLarge))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildAd1() {
    return Container(
        decoration: AppDecoration.fillRed,
        child: CustomImageView(
            imagePath: ImageConstant.imgImage9, height: 173.v, width: 360.h));
  }

  /// Section Widget
  Widget _buildFoundationText() {
    return SizedBox(
        height: 141.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller.homeScreenContainerModelObj.value
                .foundationtextItemList.value.length,
            itemBuilder: (context, index) {
              FoundationtextItemModel model = controller
                  .homeScreenContainerModelObj
                  .value
                  .foundationtextItemList
                  .value[index];
              return FoundationtextItemWidget(model,
                  onTapImgFoundationImage: () {
                onTapImgFoundationImage();
              });
            })));
  }

  /// Section Widget
  Widget _buildText() {
    return SizedBox(
        height: 140.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: controller
                .homeScreenContainerModelObj.value.textItemList.value.length,
            itemBuilder: (context, index) {
              TextItemModel model = controller
                  .homeScreenContainerModelObj.value.textItemList.value[index];
              return TextItemWidget(model);
            })));
  }

  /// Navigates to the foundationSectionRecommendationsScreen when the action is triggered.
  onTapImgFoundationImage() {
    Get.toNamed(AppRoutes.foundationSectionRecommendationsScreen);
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
