import '../controller/data_collection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DataCollectionScreen.
///
/// This class ensures that the DataCollectionController is created when the
/// DataCollectionScreen is first loaded.
class DataCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataCollectionController());
  }
}
