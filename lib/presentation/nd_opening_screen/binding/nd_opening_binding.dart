import '../controller/nd_opening_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NdOpeningScreen.
///
/// This class ensures that the NdOpeningController is created when the
/// NdOpeningScreen is first loaded.
class NdOpeningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NdOpeningController());
  }
}
