import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/settings_screen/models/settings_model.dart';

/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;
}
