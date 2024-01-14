import 'controller/log_in_page_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/core/utils/validation_functions.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:decalcomania_aet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInPageScreen extends GetWidget<LogInPageController> {
  LogInPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 53.h, vertical: 149.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.img16,
                                      height: 160.adaptSize,
                                      width: 160.adaptSize),
                                  SizedBox(height: 9.v),
                                  Text("lbl_sign_in".tr.toUpperCase(),
                                      style: theme.textTheme.displaySmall),
                                  SizedBox(height: 9.v),
                                  CustomTextFormField(
                                      controller: controller.userNameController,
                                      hintText: "msg_email_or_username"
                                          .tr
                                          .toUpperCase(),
                                      textInputType: TextInputType.emailAddress,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              3.h, 3.v, 14.h, 2.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgLockGray90001,
                                              height: 29.adaptSize,
                                              width: 29.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 34.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      contentPadding: EdgeInsets.only(
                                          top: 7.v, right: 30.h, bottom: 7.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.outlineGray),
                                  SizedBox(height: 20.v),
                                  CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText:
                                          "lbl_password2".tr.toUpperCase(),
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.h, 5.v, 17.h, 5.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgTrophyGray90002,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 34.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          top: 7.v, right: 30.h, bottom: 7.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.outlineGray),
                                  SizedBox(height: 7.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text(
                                              "msg_forgot_password"
                                                  .tr
                                                  .toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelMediumInterBluegray400
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)))),
                                  Spacer(),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 37.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                "msg_create_new_account"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .bodySmallBaloo2),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSIGNUP();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h,
                                                        top: 2.v,
                                                        bottom: 2.v),
                                                    child: Text(
                                                        "lbl_sign_up"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: CustomTextStyles
                                                            .labelLargeInterBluegray400
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline))))
                                          ])),
                                  SizedBox(height: 2.v),
                                  CustomElevatedButton(
                                      width: 156.h,
                                      text: "lbl_log_in".tr.toUpperCase(),
                                      onPressed: () {
                                        onTapLOGIN();
                                      })
                                ])))))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSIGNUP() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the ndOpeningScreen when the action is triggered.
  onTapLOGIN() {
    Get.toNamed(
      AppRoutes.ndOpeningScreen,
    );
  }
}
