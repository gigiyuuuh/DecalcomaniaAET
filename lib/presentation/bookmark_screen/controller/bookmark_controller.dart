import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/bookmark_screen/models/bookmark_model.dart';

/// A controller class for the BookmarkScreen.
///
/// This class manages the state of the BookmarkScreen, including the
/// current bookmarkModelObj
class BookmarkController extends GetxController {
  Rx<BookmarkModel> bookmarkModelObj = BookmarkModel().obs;
}
