import 'controller/log_in_page_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/core/utils/validation_functions.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:decalcomania_aet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInPageScreen extends GetWidget<LogInPageController> {
  LogInPageScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img16,
                height: 160.adaptSize,
                width: 160.adaptSize,
              ),
              SizedBox(height: 9.v),
              Text("lbl_sign_in".tr.toUpperCase(),
                  style: theme.textTheme.displaySmall),
              SizedBox(height: 9.v),
              Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                        height: 44.v,
                        width: 265.h,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.h, vertical: 15.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildUsername(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "lbl_email_address2".tr.toUpperCase(),
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 1.v),
                      Container(
                        height: 44.v,
                        width: 265.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          _buildPassword(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "Password".tr.toUpperCase(),
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: 53.v),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Create New Account?".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallBaloo2,
                            ),
                            GestureDetector(
                              onTap: () {
                                onTapTxtSIGNUP();
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 2.v, bottom: 2.v),
                                child: Text(
                                  "SIGN UP".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .labelLargeInterBluegray400
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      _buildLogin(),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUsername() {
    return CustomTextFormField(
      width: 265.h,
      controller: controller.userNameController,
      alignment: Alignment.bottomCenter,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  Widget _buildPassword() {
    return CustomTextFormField(
      width: 265.h,
      controller: controller.passwordController,
      textInputAction: TextInputAction.done,
      alignment: Alignment.bottomLeft,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  Widget _buildLogin() {
    return CustomElevatedButton(
      width: 156.h,
      text: "LOGIN".tr.toUpperCase(),
      onPressed: () {
        onTapLOGIN();
      },
      alignment: Alignment.center,
    );
  }

  onTapTxtSIGNUP() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapLOGIN() {
    Get.toNamed(AppRoutes.homeScreenContainer1Screen);
  }
}
