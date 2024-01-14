import '../controller/opening_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OpeningScreen.
///
/// This class ensures that the OpeningController is created when the
/// OpeningScreen is first loaded.
class OpeningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OpeningController());
  }
}
