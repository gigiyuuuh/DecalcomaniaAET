import '../../../core/app_export.dart';

/// This class is used in the [text_item_widget] screen.
class TextItemModel {
  TextItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle39682);
    text = text ?? Rx("BLK");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? text;

  Rx<String>? id;
}
