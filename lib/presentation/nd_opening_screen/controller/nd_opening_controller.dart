import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/nd_opening_screen/models/nd_opening_model.dart';

/// A controller class for the NdOpeningScreen.
///
/// This class manages the state of the NdOpeningScreen, including the
/// current ndOpeningModelObj
class NdOpeningController extends GetxController {
  Rx<NdOpeningModel> ndOpeningModelObj = NdOpeningModel().obs;
}
