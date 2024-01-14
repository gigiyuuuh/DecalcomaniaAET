import '../controller/policy_changes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PolicyChangesScreen.
///
/// This class ensures that the PolicyChangesController is created when the
/// PolicyChangesScreen is first loaded.
class PolicyChangesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PolicyChangesController());
  }
}
