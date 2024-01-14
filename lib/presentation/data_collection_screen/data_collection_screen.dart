import 'controller/data_collection_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DataCollectionScreen extends GetWidget<DataCollectionController> {
  const DataCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.v),
                child: Text("lbl_data_collection".tr,
                    style: theme.textTheme.headlineSmall))));
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
                  imagePath: ImageConstant.imgKhakiBeigeSimple51x360),
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

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }
}