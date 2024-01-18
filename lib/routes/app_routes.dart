import 'package:decalcomania_aet/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:decalcomania_aet/presentation/opening_screen/opening_screen.dart';
import 'package:decalcomania_aet/presentation/opening_screen/binding/opening_binding.dart';
import 'package:decalcomania_aet/presentation/change_password_screen/change_password_screen.dart';
import 'package:decalcomania_aet/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:decalcomania_aet/presentation/data_collection_screen/data_collection_screen.dart';
import 'package:decalcomania_aet/presentation/data_collection_screen/binding/data_collection_binding.dart';
import 'package:decalcomania_aet/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:decalcomania_aet/presentation/user_rights_screen/user_rights_screen.dart';
import 'package:decalcomania_aet/presentation/user_rights_screen/binding/user_rights_binding.dart';
import 'package:decalcomania_aet/presentation/policy_changes_screen/policy_changes_screen.dart';
import 'package:decalcomania_aet/presentation/policy_changes_screen/binding/policy_changes_binding.dart';
import 'package:decalcomania_aet/presentation/safety_screen/safety_screen.dart';
import 'package:decalcomania_aet/presentation/safety_screen/binding/safety_binding.dart';
import 'package:decalcomania_aet/presentation/location_screen/location_screen.dart';
import 'package:decalcomania_aet/presentation/location_screen/binding/location_binding.dart';
import 'package:decalcomania_aet/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:decalcomania_aet/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:decalcomania_aet/presentation/help_center_screen/help_center_screen.dart';
import 'package:decalcomania_aet/presentation/help_center_screen/binding/help_center_binding.dart';
import 'package:decalcomania_aet/presentation/report_screen/report_screen.dart';
import 'package:decalcomania_aet/presentation/report_screen/binding/report_binding.dart';
import 'package:decalcomania_aet/presentation/notification_screen/notification_screen.dart';
import 'package:decalcomania_aet/presentation/notification_screen/binding/notification_binding.dart';
import 'package:decalcomania_aet/presentation/privacy_screen/privacy_screen.dart';
import 'package:decalcomania_aet/presentation/privacy_screen/binding/privacy_binding.dart';
import 'package:decalcomania_aet/presentation/support_screen/support_screen.dart';
import 'package:decalcomania_aet/presentation/support_screen/binding/support_binding.dart';
import 'package:decalcomania_aet/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:decalcomania_aet/presentation/bookmark_screen/binding/bookmark_binding.dart';
import 'package:decalcomania_aet/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:decalcomania_aet/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:decalcomania_aet/presentation/settings_screen/settings_screen.dart';
import 'package:decalcomania_aet/presentation/settings_screen/binding/settings_binding.dart';
import 'package:decalcomania_aet/presentation/log_in_page_screen/log_in_page_screen.dart';
import 'package:decalcomania_aet/presentation/log_in_page_screen/binding/log_in_page_binding.dart';
import 'package:decalcomania_aet/presentation/nd_opening_screen/nd_opening_screen.dart';
import 'package:decalcomania_aet/presentation/nd_opening_screen/binding/nd_opening_binding.dart';
import 'package:decalcomania_aet/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';
import 'package:decalcomania_aet/presentation/home_screen_container1_screen/binding/home_screen_container1_binding.dart';
import 'package:decalcomania_aet/presentation/foundation_section_recommendations_screen/foundation_section_recommendations_screen.dart';
import 'package:decalcomania_aet/presentation/foundation_section_recommendations_screen/binding/foundation_section_recommendations_binding.dart';
import 'package:decalcomania_aet/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:decalcomania_aet/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:decalcomania_aet/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:decalcomania_aet/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String openingScreen = '/opening_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String dataCollectionScreen = '/data_collection_screen';

  static const String userRightsScreen = '/user_rights_screen';

  static const String policyChangesScreen = '/policy_changes_screen';

  static const String safetyScreen = '/safety_screen';

  static const String locationScreen = '/location_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String reportScreen = '/report_screen';

  static const String notificationScreen = '/notification_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String supportScreen = '/support_screen';

  static const String bookmarkScreen = '/bookmark_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String searchScreenPage = '/search_screen_page';

  static const String settingsScreen = '/settings_screen';

  static const String logInPageScreen = '/log_in_page_screen';

  static const String ndOpeningScreen = '/nd_opening_screen';

  static const String homeScreenContainerPage = '/home_screen_container_page';

  static const String homeScreenContainer1Screen =
      '/home_screen_container1_screen';

  static const String foundationSectionRecommendationsScreen =
      '/foundation_section_recommendations_screen';

  static const String mapScreenPage = '/map_screen_page';

  static const String profileScreenPage = '/profile_screen_page';

  static const String skinEvaluationAnalysisPage =
      '/skin_evaluation_analysis_page';

  static const String signUpScreen = '/sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: openingScreen,
      page: () => const OpeningScreen(),
      bindings: [
        OpeningBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => const ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: dataCollectionScreen,
      page: () => const DataCollectionScreen(),
      bindings: [
        DataCollectionBinding(),
      ],
    ),
    GetPage(
      name: userRightsScreen,
      page: () => const UserRightsScreen(),
      bindings: [
        UserRightsBinding(),
      ],
    ),
    GetPage(
      name: policyChangesScreen,
      page: () => const PolicyChangesScreen(),
      bindings: [
        PolicyChangesBinding(),
      ],
    ),
    GetPage(
      name: safetyScreen,
      page: () => SafetyScreen(),
      bindings: [
        SafetyBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => const LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => const PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: helpCenterScreen,
      page: () => const HelpCenterScreen(),
      bindings: [
        HelpCenterBinding(),
      ],
    ),
    GetPage(
      name: reportScreen,
      page: () => const ReportScreen(),
      bindings: [
        ReportBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => const NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: privacyScreen,
      page: () => const PrivacyScreen(),
      bindings: [
        PrivacyBinding(),
      ],
    ),
    GetPage(
      name: supportScreen,
      page: () => const SupportScreen(),
      bindings: [
        SupportBinding(),
      ],
    ),
    GetPage(
      name: bookmarkScreen,
      page: () => const BookmarkScreen(),
      bindings: [
        BookmarkBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => const EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => const SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: logInPageScreen,
      page: () => LogInPageScreen(),
      bindings: [
        LogInPageBinding(),
      ],
    ),
    GetPage(
      name: ndOpeningScreen,
      page: () => const NdOpeningScreen(),
      bindings: [
        NdOpeningBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainer1Screen,
      page: () => const HomeScreenContainer1Screen(),
      bindings: [
        HomeScreenContainer1Binding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerPage,
      page: () => HomeScreenContainerPage(),
    ),
    GetPage(
      name: foundationSectionRecommendationsScreen,
      page: () => const FoundationSectionRecommendationsScreen(),
      bindings: [
        FoundationSectionRecommendationsBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => const AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: profileScreenPage,
      page: () => const ProfileScreenPage(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const OpeningScreen(),
      bindings: [
        OpeningBinding(),
      ],
    )
  ];
}
