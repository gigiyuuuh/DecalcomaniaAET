import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/log_in_page_screen/models/log_in_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInPageScreen.
///
/// This class manages the state of the LogInPageScreen, including the
/// current logInPageModelObj
class LogInPageController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInPageModel> logInPageModelObj = LogInPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
