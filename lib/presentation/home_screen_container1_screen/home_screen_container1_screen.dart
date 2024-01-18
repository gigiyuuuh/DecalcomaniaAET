import 'controller/home_screen_container1_controller.dart';
import 'package:decalcomania_aet/core/app_export.dart';
import 'package:decalcomania_aet/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:decalcomania_aet/presentation/map_screen_page/map_screen_page.dart';
import 'package:decalcomania_aet/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:decalcomania_aet/presentation/search_screen_page/search_screen_page.dart';
import 'package:decalcomania_aet/presentation/skin_evaluation_analysis_page/skin_evaluation_analysis_page.dart';
import 'package:decalcomania_aet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenContainer1Screen
    extends GetWidget<HomeScreenContainer1Controller> {
  const HomeScreenContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeScreenContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.homeBluegray400:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.rewind:
        return AppRoutes.searchScreenPage;
      case BottomBarEnum.info:
        return AppRoutes.skinEvaluationAnalysisPage;
      case BottomBarEnum.linkedin:
        return AppRoutes.mapScreenPage;
      case BottomBarEnum.lock:
        return AppRoutes.profileScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      case AppRoutes.searchScreenPage:
        return SearchScreenPage();
      case AppRoutes.skinEvaluationAnalysisPage:
        return SkinEvaluationAnalysisPage();
      case AppRoutes.mapScreenPage:
        return MapScreenPage();
      case AppRoutes.profileScreenPage:
        return const ProfileScreenPage();
      default:
        return const DefaultWidget();
    }
  }
}
