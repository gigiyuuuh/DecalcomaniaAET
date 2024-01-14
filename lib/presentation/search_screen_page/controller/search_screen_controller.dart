import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/search_screen_page/models/search_screen_model.dart';

/// A controller class for the SearchScreenPage.
///
/// This class manages the state of the SearchScreenPage, including the
/// current searchScreenModelObj
class SearchScreenController extends GetxController {
  SearchScreenController(this.searchScreenModelObj);

  Rx<SearchScreenModel> searchScreenModelObj;
}
