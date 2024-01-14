import 'controller/search_screen_controller.dart';
import 'models/search_screen_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchScreenPage extends StatelessWidget {
  SearchScreenPage({Key? key}) : super(key: key);

  SearchScreenController controller =
      Get.put(SearchScreenController(SearchScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 16.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCursor,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(bottom: 614.v)),
                      Container(
                          height: 24.v,
                          width: 279.h,
                          margin: EdgeInsets.only(bottom: 614.v),
                          decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(12.h)))
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
