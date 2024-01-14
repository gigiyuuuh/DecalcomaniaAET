import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/skin_evaluation_analysis_page/models/skin_evaluation_analysis_model.dart';

/// A controller class for the SkinEvaluationAnalysisPage.
///
/// This class manages the state of the SkinEvaluationAnalysisPage, including the
/// current skinEvaluationAnalysisModelObj
class SkinEvaluationAnalysisController extends GetxController {
  SkinEvaluationAnalysisController(this.skinEvaluationAnalysisModelObj);

  Rx<SkinEvaluationAnalysisModel> skinEvaluationAnalysisModelObj;
}
