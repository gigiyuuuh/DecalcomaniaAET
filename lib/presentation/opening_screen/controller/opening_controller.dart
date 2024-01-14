import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/opening_screen/models/opening_model.dart';

/// A controller class for the OpeningScreen.
///
/// This class manages the state of the OpeningScreen, including the
/// current openingModelObj
class OpeningController extends GetxController {
  Rx<OpeningModel> openingModelObj = OpeningModel().obs;
}
