import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/data_collection_screen/models/data_collection_model.dart';

/// A controller class for the DataCollectionScreen.
///
/// This class manages the state of the DataCollectionScreen, including the
/// current dataCollectionModelObj
class DataCollectionController extends GetxController {
  Rx<DataCollectionModel> dataCollectionModelObj = DataCollectionModel().obs;
}
