import '../../../core/app_export.dart';

/// This class is used in the [foundationsectionrecommendationgrid_item_widget] screen.
class FoundationsectionrecommendationgridItemModel {
  FoundationsectionrecommendationgridItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle39682);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
