import '../controller/bookmark_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookmarkScreen.
///
/// This class ensures that the BookmarkController is created when the
/// BookmarkScreen is first loaded.
class BookmarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookmarkController());
  }
}
