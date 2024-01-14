import '../controller/home_screen_container_controller.dart';
import '../models/foundationtext_item_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoundationtextItemWidget extends StatelessWidget {
  FoundationtextItemWidget(
    this.foundationtextItemModelObj, {
    Key? key,
    this.onTapImgFoundationImage,
  }) : super(
          key: key,
        );

  FoundationtextItemModel foundationtextItemModelObj;

  var controller = Get.find<HomeScreenContainerController>();

  VoidCallback? onTapImgFoundationImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: foundationtextItemModelObj.foundationImage!.value,
                height: 120.v,
                width: 90.h,
                onTap: () {
                  onTapImgFoundationImage!.call();
                },
              ),
            ),
            Obx(
              () => Text(
                foundationtextItemModelObj.foundationText!.value,
                style: CustomTextStyles.labelLargeMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
