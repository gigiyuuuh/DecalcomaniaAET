import 'controller/safety_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/core/utils/validation_functions.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_subtitle.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title_image.dart';
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
                      hintStyle: CustomTextStyles.titleLargeBaloo2,
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
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgKhakiBeigeSimple51x100,
            ),
            AppbarSubtitle(
              text: "lbl_back".tr,
              margin: EdgeInsets.fromLTRB(31.h, 12.v, 287.h, 19.v),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 20.v),
        ),
      ],
    );
  }
}
