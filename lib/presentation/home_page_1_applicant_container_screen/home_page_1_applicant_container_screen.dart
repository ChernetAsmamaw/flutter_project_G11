import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/presentation/all_jobs_one_tab_container_page/all_jobs_one_tab_container_page.dart';
import 'package:job_service_app/presentation/home_page_1_applicant_page/home_page_1_applicant_page.dart';
import 'package:job_service_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage1ApplicantContainerScreen extends StatelessWidget {
  HomePage1ApplicantContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage1ApplicantPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage1ApplicantPage;
      case BottomBarEnum.Jobs:
        return AppRoutes.allJobsOneTabContainerPage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage1ApplicantPage:
        return HomePage1ApplicantPage();
      case AppRoutes.allJobsOneTabContainerPage:
        return AllJobsOneTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
