import '../../../core/app_export.dart';

/// This class is used in the [foundationtext_item_widget] screen.
class FoundationtextItemModel {
  FoundationtextItemModel({
    this.foundationImage,
    this.foundationText,
    this.id,
  }) {
    foundationImage = foundationImage ?? Rx(ImageConstant.imgRectangle3968);
    foundationText = foundationText ?? Rx("Foundation");
    id = id ?? Rx("");
  }

  Rx<String>? foundationImage;

  Rx<String>? foundationText;

  Rx<String>? id;
}
