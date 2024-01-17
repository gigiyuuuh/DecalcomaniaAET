import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController CityController = TextEditingController();

  TextEditingController ProvinceController = TextEditingController();

  TextEditingController PhoneController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailAddressController = TextEditingController();

  TextEditingController PasswordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> genderValue = "".obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    nameController.dispose();
    zipcodeController.dispose();
    CityController.dispose();
    ProvinceController.dispose();
    PhoneController.dispose();
    usernameController.dispose();
    emailAddressController.dispose();
    PasswordController.dispose();
    confirmPasswordController.dispose();
  }
}
