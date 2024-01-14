import '../controller/foundation_section_recommendations_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FoundationSectionRecommendationsScreen.
///
/// This class ensures that the FoundationSectionRecommendationsController is created when the
/// FoundationSectionRecommendationsScreen is first loaded.
class FoundationSectionRecommendationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoundationSectionRecommendationsController());
  }
}
