import 'controller/skin_evaluation_analysis_controller.dart';
import 'models/skin_evaluation_analysis_model.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SkinEvaluationAnalysisPage extends StatelessWidget {
  SkinEvaluationAnalysisPage({Key? key}) : super(key: key);

  SkinEvaluationAnalysisController controller = Get.put(
      SkinEvaluationAnalysisController(SkinEvaluationAnalysisModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildSkinEvaluationRow(),
                  SizedBox(height: 5.v),
                  Divider(color: appTheme.black900.withOpacity(0.2))
                ]))));
  }

  /// Section Widget
  Widget _buildSkinEvaluationRow() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 17.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 20.v,
              width: 20.h,
              margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
              onTap: () {
                onTapImgVector();
              }),
          Padding(
              padding: EdgeInsets.only(left: 40.h, top: 40.v),
              child: Text("msg_skin_evaluation".tr,
                  style: CustomTextStyles.titleSmallInterBluegray400))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgVector() {
    Get.toNamed(
      AppRoutes.homeScreenContainer1Screen,
    );
  }
}
