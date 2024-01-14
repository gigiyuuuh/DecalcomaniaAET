import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/policy_changes_screen/models/policy_changes_model.dart';

/// A controller class for the PolicyChangesScreen.
///
/// This class manages the state of the PolicyChangesScreen, including the
/// current policyChangesModelObj
class PolicyChangesController extends GetxController {
  Rx<PolicyChangesModel> policyChangesModelObj = PolicyChangesModel().obs;
}
