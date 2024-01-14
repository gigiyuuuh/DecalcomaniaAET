import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/support_screen/models/support_model.dart';

/// A controller class for the SupportScreen.
///
/// This class manages the state of the SupportScreen, including the
/// current supportModelObj
class SupportController extends GetxController {
  Rx<SupportModel> supportModelObj = SupportModel().obs;
}
