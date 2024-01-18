import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          width: 44.h,
          text: "Skip".tr,
          buttonStyle: CustomButtonStyles.fillBlueGray,
          buttonTextStyle: CustomTextStyles.labelLargeMedium,
        ),
      ),
    );
  }
}
