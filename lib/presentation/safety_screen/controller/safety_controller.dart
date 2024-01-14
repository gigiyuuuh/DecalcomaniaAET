import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/safety_screen/models/safety_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SafetyScreen.
///
/// This class manages the state of the SafetyScreen, including the
/// current safetyModelObj
class SafetyController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<SafetyModel> safetyModelObj = SafetyModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }
}
