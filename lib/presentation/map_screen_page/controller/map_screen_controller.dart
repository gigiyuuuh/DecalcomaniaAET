import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/map_screen_page/models/map_screen_model.dart';

/// A controller class for the MapScreenPage.
///
/// This class manages the state of the MapScreenPage, including the
/// current mapScreenModelObj
class MapScreenController extends GetxController {
  MapScreenController(this.mapScreenModelObj);

  Rx<MapScreenModel> mapScreenModelObj;
}
