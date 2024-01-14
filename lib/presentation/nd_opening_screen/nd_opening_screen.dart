import 'controller/nd_opening_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_button.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NdOpeningScreen extends GetWidget<NdOpeningController> {
  const NdOpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 51.h, top: 152.v, right: 51.h),
                child: Column(children: [
                  SizedBox(
                      height: 244.v,
                      width: 257.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 41.v),
                                child: Text("lbl_welcome".tr.toUpperCase(),
                                    style: theme.textTheme.headlineMedium))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 257.h,
                                child: Text("msg_it_s_essential_to".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.titleSmall))),
                        CustomImageView(
                            imagePath: ImageConstant.img16,
                            height: 160.adaptSize,
                            width: 160.adaptSize,
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 7.v),
                  Text("msg_take_the_skin_test".tr,
                      style: CustomTextStyles.labelLargeInterBluegray400Medium
                          .copyWith(decoration: TextDecoration.underline)),
                  SizedBox(height: 5.v),
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(height: 49.v, actions: [
      AppbarTrailingButton(
          margin: EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v),
          onTap: () {
            onTapSkip();
          })
    ]);
  }

  /// Navigates to the homeScreenContainer1Screen when the action is triggered.
  onTapSkip() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }

  onTapTxtTapTheSkinTest() {
    Get.toNamed(
      AppRoutes.profileScreenPage,
    );
  }
}
