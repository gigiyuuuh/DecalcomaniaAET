import '../../../core/app_export.dart';
import 'foundationsectionrecommendationgrid_item_model.dart';

/// This class defines the variables used in the [foundation_section_recommendations_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FoundationSectionRecommendationsModel {
  Rx<List<FoundationsectionrecommendationgridItemModel>>
      foundationsectionrecommendationgridItemList = Rx([
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39682.obs),
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39683.obs),
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39684.obs),
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39685.obs),
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39686.obs),
    FoundationsectionrecommendationgridItemModel(
        rectangle: ImageConstant.imgRectangle39687.obs)
  ]);
}
