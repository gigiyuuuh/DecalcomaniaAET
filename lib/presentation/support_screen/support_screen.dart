import 'controller/support_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SupportScreen extends GetWidget<SupportController> {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 20.v),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFavorite,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 6.v, bottom: 10.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_support".tr,
                                style: CustomTextStyles.headlineSmallBaloo2))
                      ]),
                  SizedBox(height: 42.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: _buildRowReport(
                          reportText: "lbl_help_center".tr,
                          onTapRowReport: () {
                            onTapRowReport();
                          })),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: _buildRowReport(
                          reportText: "lbl_report".tr,
                          onTapRowReport: () {
                            onTapRowReport1();
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

  /// Common widget
  Widget _buildRowReport({
    required String reportText,
    Function? onTapRowReport,
  }) {
    return GestureDetector(
        onTap: () {
          onTapRowReport!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(reportText,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v))
        ]));
  }

  onTapBACK() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapImgClose() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }

  /// Navigates to the helpCenterScreen when the action is triggered.
  onTapRowReport() {
    Get.toNamed(
      AppRoutes.helpCenterScreen,
    );
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapRowReport1() {
    Get.toNamed(
      AppRoutes.reportScreen,
    );
  }
}
