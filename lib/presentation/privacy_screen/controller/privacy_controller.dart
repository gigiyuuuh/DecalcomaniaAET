import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/privacy_screen/models/privacy_model.dart';

/// A controller class for the PrivacyScreen.
///
/// This class manages the state of the PrivacyScreen, including the
/// current privacyModelObj
class PrivacyController extends GetxController {
  Rx<PrivacyModel> privacyModelObj = PrivacyModel().obs;
}
