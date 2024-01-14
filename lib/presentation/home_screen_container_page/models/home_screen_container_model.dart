import '../../../core/app_export.dart';
import 'foundationtext_item_model.dart';
import 'text_item_model.dart';

/// This class defines the variables used in the [home_screen_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenContainerModel {
  Rx<List<FoundationtextItemModel>> foundationtextItemList = Rx([
    FoundationtextItemModel(
        foundationImage: ImageConstant.imgRectangle3968.obs,
        foundationText: "Foundation".obs),
    FoundationtextItemModel(
        foundationImage: ImageConstant.imgRectangle3968120x90.obs,
        foundationText: "Brows".obs),
    FoundationtextItemModel(
        foundationImage: ImageConstant.imgRectangle39681.obs,
        foundationText: "Eyeshadows".obs)
  ]);

  Rx<List<TextItemModel>> textItemList = Rx([
    TextItemModel(image: ImageConstant.imgRectangle39682.obs, text: "BLK".obs),
    TextItemModel(image: ImageConstant.imgRectangle39683.obs, text: "ISSY".obs),
    TextItemModel(image: ImageConstant.imgRectangle39684.obs, text: "GRWM".obs)
  ]);
}
