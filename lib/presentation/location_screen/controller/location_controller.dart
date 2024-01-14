import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/location_screen/models/location_model.dart';

/// A controller class for the LocationScreen.
///
/// This class manages the state of the LocationScreen, including the
/// current locationModelObj
class LocationController extends GetxController {
  Rx<LocationModel> locationModelObj = LocationModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;
}
