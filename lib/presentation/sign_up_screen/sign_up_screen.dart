import 'controller/sign_up_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/core/utils/validation_functions.dart';
import 'package:decalcomania_aet/widgets/app_bar/appbar_title.dart';
import 'package:decalcomania_aet/widgets/app_bar/custom_app_bar.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:decalcomania_aet/widgets/custom_radio_button.dart';
import 'package:decalcomania_aet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 39.h, vertical: 13.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 136.v,
                                          width: 130.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                        "lbl_sign_up2"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme.textTheme
                                                            .displaySmall)),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.img16,
                                                    height: 95.adaptSize,
                                                    width: 95.adaptSize,
                                                    alignment:
                                                        Alignment.topCenter)
                                              ]))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                          "msg_personal_information"
                                              .tr
                                              .toUpperCase(),
                                          style: CustomTextStyles
                                              .labelMediumInter)),
                                  SizedBox(height: 10.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.h, right: 6.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            _buildFirstName(),
                                            _buildLastName()
                                          ])),
                                  SizedBox(height: 1.v),
                                  Container(
                                      height: 78.v,
                                      width: 271.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            _buildName(),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 14.h,
                                                        bottom: 17.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        35.v,
                                                                    width:
                                                                        128.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        children: [
                                                                          _buildDateOfBirth(),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_date_of_birth".tr.toUpperCase(), style: theme.textTheme.labelMedium)))
                                                                        ])),
                                                                SizedBox(
                                                                    height:
                                                                        8.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 3
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_address"
                                                                            .tr
                                                                            .toUpperCase(),
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium))
                                                              ]),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          18.v),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_gender"
                                                                            .tr
                                                                            .toUpperCase(),
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium),
                                                                    SizedBox(
                                                                        height:
                                                                            1.v),
                                                                    _buildGenderValue()
                                                                  ]))
                                                        ])))
                                          ])),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 6.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 61.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 6.h,
                                                    vertical: 2.v),
                                                decoration: AppDecoration
                                                    .outlineGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Text(
                                                    "lbl_zip_code"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            Container(
                                                width: 91.h,
                                                margin:
                                                    EdgeInsets.only(top: 1.v),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8.h,
                                                    vertical: 2.v),
                                                decoration: AppDecoration
                                                    .outlineGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Text(
                                                    "lbl_city".tr.toUpperCase(),
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            Container(
                                                width: 91.h,
                                                margin:
                                                    EdgeInsets.only(top: 1.v),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 7.h,
                                                    vertical: 2.v),
                                                decoration: AppDecoration
                                                    .outlineGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Text(
                                                    "lbl_province"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ])),
                                  SizedBox(height: 11.v),
                                  Container(
                                      height: 35.v,
                                      width: 128.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            _buildZipcode(),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2.h),
                                                    child: Text(
                                                        "lbl_phone_number2"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme.textTheme
                                                            .labelMedium)))
                                          ])),
                                  SizedBox(height: 18.v),
                                  Divider(indent: 1.h),
                                  SizedBox(height: 7.v),
                                  Container(
                                      height: 46.v,
                                      width: 199.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Text(
                                                    "msg_account_information"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: CustomTextStyles
                                                        .labelMediumInter)),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: SizedBox(
                                                    height: 35.v,
                                                    width: 128.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          _buildUsername(),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 4
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl_username"
                                                                          .tr
                                                                          .toUpperCase(),
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelMedium)))
                                                        ])))
                                          ])),
                                  SizedBox(height: 1.v),
                                  Container(
                                      height: 35.v,
                                      width: 265.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            _buildEmailAddress(),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h),
                                                    child: Text(
                                                        "lbl_email_address2"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme.textTheme
                                                            .labelMedium)))
                                          ])),
                                  SizedBox(height: 5.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.h, right: 14.h),
                                      child: Row(children: [
                                        SizedBox(
                                            height: 35.v,
                                            width: 128.h,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: 19.v,
                                                          width: 128.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray300,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7.h),
                                                              border: Border.all(
                                                                  color: appTheme
                                                                      .gray900,
                                                                  width: 1.h,
                                                                  strokeAlign:
                                                                      strokeAlignOutside)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 4.h),
                                                          child: Text(
                                                              "lbl_password2"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ])),
                                        Container(
                                            height: 34.v,
                                            width: 128.h,
                                            margin: EdgeInsets.only(left: 9.h),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  _buildConfirmPassword(),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 4.h),
                                                          child: Text(
                                                              "msg_confirm_password"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ]))
                                      ])),
                                  SizedBox(height: 53.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                "msg_have_an_account"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .bodySmallBaloo2),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtLogin();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h,
                                                        top: 2.v,
                                                        bottom: 2.v),
                                                    child: Text(
                                                        "lbl_login2"
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
                                  _buildCreateAccount(),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_back".tr,
            margin: EdgeInsets.only(left: 17.h),
            onTap: () {
              onTapBACK();
            }));
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: CustomTextFormField(
                controller: controller.firstNameController,
                hintText: "lbl_first_name".tr.toUpperCase(),
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                })));
  }

  /// Section Widget
  Widget _buildLastName() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: CustomTextFormField(
                controller: controller.lastNameController,
                hintText: "lbl_last_name".tr.toUpperCase(),
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                })));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        width: 270.h,
        controller: controller.nameController,
        hintText: "msg_street_name_building".tr.toUpperCase(),
        alignment: Alignment.bottomCenter,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildDateOfBirth() {
    return CustomTextFormField(
        hintText: "MM/DD/YYYY",
        width: 128.h,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildGenderValue() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Obx(() => Row(children: [
                  CustomRadioButton(
                      text: "lbl_male".tr.toUpperCase(),
                      value: controller.signUpModelObj.value.radioList.value[0],
                      groupValue: controller.genderValue.value,
                      onChange: (value) {
                        controller.genderValue.value = value;
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: CustomRadioButton(
                          text: "lbl_female".tr.toUpperCase(),
                          value: controller
                              .signUpModelObj.value.radioList.value[1],
                          groupValue: controller.genderValue.value,
                          onChange: (value) {
                            controller.genderValue.value = value;
                          }))
                ]))));
  }

  /// Section Widget
  Widget _buildZipcode() {
    return CustomTextFormField(
        width: 128.h,
        controller: controller.zipcodeController,
        hintText: "lbl_ph".tr.toUpperCase(),
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildUsername() {
    return CustomTextFormField(
        width: 128.h,
        controller: controller.usernameController,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildEmailAddress() {
    return CustomTextFormField(
        width: 265.h,
        controller: controller.emailAddressController,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return CustomTextFormField(
        width: 128.h,
        controller: controller.confirmPasswordController,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildCreateAccount() {
    return CustomElevatedButton(
        width: 156.h,
        text: "lbl_create_account".tr.toUpperCase(),
        onPressed: () {
          onTapCreateAccount();
        },
        alignment: Alignment.center);
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapBACK() {
    Get.toNamed(
      AppRoutes.logInPageScreen,
    );
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapTxtLogin() {
    Get.toNamed(
      AppRoutes.logInPageScreen,
    );
  }

  /// Navigates to the ndOpeningScreen when the action is triggered.
  onTapCreateAccount() {
    Get.toNamed(
      AppRoutes.ndOpeningScreen,
    );
  }
}
