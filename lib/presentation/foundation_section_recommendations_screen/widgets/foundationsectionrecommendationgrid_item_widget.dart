import '../controller/foundation_section_recommendations_controller.dart';
import '../models/foundationsectionrecommendationgrid_item_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoundationsectionrecommendationgridItemWidget extends StatelessWidget {
  FoundationsectionrecommendationgridItemWidget(
    this.foundationsectionrecommendationgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoundationsectionrecommendationgridItemModel
      foundationsectionrecommendationgridItemModelObj;

  var controller = Get.find<FoundationSectionRecommendationsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath:
            foundationsectionrecommendationgridItemModelObj.rectangle!.value,
        height: 120.v,
        width: 50.h,
      ),
    );
  }
}
