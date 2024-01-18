import 'controller/map_screen_controller.dart';
import 'models/map_screen_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MapScreenPage extends StatelessWidget {
  MapScreenPage({Key? key}) : super(key: key);

  MapScreenController controller =
      Get.put(MapScreenController(MapScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 21.v,
                          width: 88.h,
                          margin: EdgeInsets.only(bottom: 638.v),
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
                          margin: EdgeInsets.only(bottom: 638.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_face".tr,
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_face".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                      Container(
                          height: 21.v,
                          width: 50.h,
                          margin: EdgeInsets.only(bottom: 638.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_brows".tr,
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_brows".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                      Container(
                          height: 21.v,
                          width: 34.h,
                          margin: EdgeInsets.only(bottom: 638.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_eyes".tr,
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_eyes".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                      Container(
                          height: 21.v,
                          width: 46.h,
                          margin: EdgeInsets.only(bottom: 638.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_cheek".tr,
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_cheek".tr,
                                    style: theme.textTheme.labelLarge))
                          ])),
                      Container(
                          height: 21.v,
                          width: 31.h,
                          margin: EdgeInsets.only(bottom: 638.v),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_lips".tr,
                                    style: theme.textTheme.labelLarge)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_lips".tr,
                                    style: theme.textTheme.labelLarge))
                          ]))
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
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x100),
              SizedBox(
                  height: 51.v,
                  width: double.maxFinite,
                  child: Stack(children: [
                    SizedBox(
                        height: 51.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin:
                                  EdgeInsets.fromLTRB(20.h, 8.v, 260.h, 19.v),
                              child: Stack(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGrid,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                    onTap: () {
                                      onTapImgGrid();
                                    }),
                              ])),
                        ])),
                  ]))
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 21.v),
              child: Stack(children: [
                SizedBox(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    child: Stack(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBagBlueGray900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.center,
                          onTap: () {
                            onTapImgBag();
                          }),
                    ]))
              ]))
        ]);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgGrid() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the bookmarkScreen when the action is triggered.
  onTapImgBag() {
    Get.toNamed(
      AppRoutes.bookmarkScreen,
    );
  }
}
