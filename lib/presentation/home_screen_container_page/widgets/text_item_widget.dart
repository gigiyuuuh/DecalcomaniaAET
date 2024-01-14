import '../controller/home_screen_container_controller.dart';
import '../models/text_item_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextItemWidget extends StatelessWidget {
  TextItemWidget(
    this.textItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TextItemModel textItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: textItemModelObj.image!.value,
              height: 120.v,
              width: 90.h,
            ),
          ),
          Obx(
            () => Text(
              textItemModelObj.text!.value,
              style: CustomTextStyles.labelLargeMedium,
            ),
          ),
        ],
      ),
    );
  }
}
