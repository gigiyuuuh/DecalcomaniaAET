import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/home_screen_container_page/models/home_screen_container_model.dart';

/// A controller class for the HomeScreenContainerPage.
///
/// This class manages the state of the HomeScreenContainerPage, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {
  HomeScreenContainerController(this.homeScreenContainerModelObj);

  Rx<HomeScreenContainerModel> homeScreenContainerModelObj;
}
