import '../controller/user_rights_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UserRightsScreen.
///
/// This class ensures that the UserRightsController is created when the
/// UserRightsScreen is first loaded.
class UserRightsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRightsController());
  }
}
