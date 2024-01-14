import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/notification_screen/models/notification_model.dart';

/// A controller class for the NotificationScreen.
///
/// This class manages the state of the NotificationScreen, including the
/// current notificationModelObj
class NotificationController extends GetxController {
  Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;
}
