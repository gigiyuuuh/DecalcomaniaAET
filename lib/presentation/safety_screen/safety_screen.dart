import 'controller/safety_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/core/utils/validation_functions.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
// ignore: unused_import
import 'package:decalcomania_aet/widgets/app_bar/appbar_trailing_image.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SafetyScreen extends GetWidget<SafetyController> {
  SafetyScreen({Key? key})
      : super(
          key: key,
        );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 36.h,
                  vertical: 21.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_safety_and_security".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 19.v),
                    CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: "lbl_password".tr,
                      hintStyle: theme.textTheme.labelSmall,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.underLineBlack,
                      filled: false,
                    ),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_change_password".tr,
                        style: CustomTextStyles.bodySmallBluegray40011,
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
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

  onTapBACK() {
    Get.toNamed(
      AppRoutes.privacyScreen,
    );
  }

  onTapImgClose() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }
}
