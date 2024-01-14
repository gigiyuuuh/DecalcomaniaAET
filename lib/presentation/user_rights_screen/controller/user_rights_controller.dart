import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/user_rights_screen/models/user_rights_model.dart';

/// A controller class for the UserRightsScreen.
///
/// This class manages the state of the UserRightsScreen, including the
/// current userRightsModelObj
class UserRightsController extends GetxController {
  Rx<UserRightsModel> userRightsModelObj = UserRightsModel().obs;
}
