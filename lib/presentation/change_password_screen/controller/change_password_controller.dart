import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/change_password_screen/models/change_password_model.dart';

/// A controller class for the ChangePasswordScreen.
///
/// This class manages the state of the ChangePasswordScreen, including the
/// current changePasswordModelObj
class ChangePasswordController extends GetxController {
  Rx<ChangePasswordModel> changePasswordModelObj = ChangePasswordModel().obs;
}
