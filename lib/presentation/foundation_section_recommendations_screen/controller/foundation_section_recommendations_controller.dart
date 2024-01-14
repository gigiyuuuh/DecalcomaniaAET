import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/foundation_section_recommendations_screen/models/foundation_section_recommendations_model.dart';

/// A controller class for the FoundationSectionRecommendationsScreen.
///
/// This class manages the state of the FoundationSectionRecommendationsScreen, including the
/// current foundationSectionRecommendationsModelObj
class FoundationSectionRecommendationsController extends GetxController {
  Rx<FoundationSectionRecommendationsModel>
      foundationSectionRecommendationsModelObj =
      FoundationSectionRecommendationsModel().obs;
}
