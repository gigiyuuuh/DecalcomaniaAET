import '../controller/log_in_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogInPageScreen.
///
/// This class ensures that the LogInPageController is created when the
/// LogInPageScreen is first loaded.
class LogInPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInPageController());
  }
}
