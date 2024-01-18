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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                                      height: 45.v,
                                      width: 271.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 5.h, vertical: 10.v),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 14.h,
                                                    ),
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
                                                                        30.v,
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
                                                              ]),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          1.v),
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
                                                                    _buildGenderValue()
                                                                  ]))
                                                        ])))
                                          ])),
                                  SizedBox(height: 1.v),
                                  Container(
                                      width: 50.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "ADDRESS".tr.toUpperCase(),
                                                    style: CustomTextStyles
                                                        .labelMediumInter)),
                                          ])),
                                  SizedBox(height: 1.v),
                                  Container(
                                      height: 30.v,
                                      width: 265.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            _buildAddress(),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h, bottom: 3.h),
                                                ))
                                          ])),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 6.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            _buildZipCode(),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 1.h,
                                                  vertical: 1.v),
                                            ),
                                            _buildCity(),
                                            Container(
                                              margin: EdgeInsets.only(top: 1.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h,
                                                  vertical: 2.v),
                                            ),
                                            _buildProvince(),
                                            Container(
                                              margin: EdgeInsets.only(top: 1.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2.h,
                                                  vertical: 2.v),
                                            )
                                          ])),
                                  SizedBox(height: 7.v),
                                  Container(
                                      width: 90.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "PHONE NUMBER"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: CustomTextStyles
                                                        .labelMediumInter)),
                                          ])),
                                  SizedBox(height: 1.v),
                                  Container(
                                      height: 30.v,
                                      width: 128.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            _buildPhone(),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                ))
                                          ])),
                                  SizedBox(height: 18.v),
                                  Divider(indent: 1.h),
                                  SizedBox(height: 10.v),
                                  Container(
                                      height: 55.v,
                                      width: 199.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
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
                                                    height: 45.v,
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
                                      height: 45.v,
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
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.h, right: 14.h),
                                      child: Row(children: [
                                        SizedBox(
                                            height: 45.v,
                                            width: 128.h,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  const Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Stack(children: [
                                                        _buildPassword(),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            4.h,
                                                                        bottom: 10
                                                                            .h),
                                                                child: Text(
                                                                    "password"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium)))
                                                      ]))
                                                ])),
                                        Container(
                                            height: 45.v,
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
  Widget _buildAddress() {
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
        contentPadding: EdgeInsets.only(top: 3.v, bottom: 3.v),
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildGenderValue() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: Obx(() => Row(children: [
                  CustomRadioButton(
                      text: "lbl_male".tr.toUpperCase(),
                      value: controller.signUpModelObj.value.radioList.value[0],
                      groupValue: controller.genderValue.value,
                      onChange: (value) {
                        controller.genderValue.value = value;
                      }),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h),
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
  Widget _buildPhone() {
    return CustomTextFormField(
        width: 128.h,
        controller: controller.phoneController,
        hintText: "lbl_ph".tr.toUpperCase(),
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildZipCode() {
    return CustomTextFormField(
        width: 50.h,
        controller: controller.zipcodeController,
        hintText: "ZIP CODE".tr.toUpperCase(),
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
        width: 90.h,
        controller: controller.cityController,
        hintText: "CITY".tr.toUpperCase(),
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildProvince() {
    return CustomTextFormField(
        width: 90.h,
        controller: controller.provinceController,
        hintText: "PROVINCE".tr.toUpperCase(),
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

  Widget _buildPassword() {
    return CustomTextFormField(
        width: 128.h,
        controller: controller.passwordController,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomLeft);
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
