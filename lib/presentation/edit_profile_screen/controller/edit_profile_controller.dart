import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/edit_profile_screen/models/edit_profile_model.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;
}
