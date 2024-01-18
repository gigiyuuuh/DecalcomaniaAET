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
  TextEditingController addressController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController cityController =
      TextEditingController(); // Updated variable name
  TextEditingController provinceController =
      TextEditingController(); // Updated variable name
  TextEditingController phoneController =
      TextEditingController(); // Updated variable name
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController =
      TextEditingController(); // Updated variable name
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
    addressController.dispose();
    zipcodeController.dispose();
    cityController.dispose();
    provinceController.dispose();
    phoneController.dispose();
    usernameController.dispose();
    emailAddressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
