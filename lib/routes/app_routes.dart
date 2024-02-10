import 'package:flutter/material.dart';
import 'package:job_service_app/presentation/sign_up_page_one_screen/sign_up_page_one_screen.dart';
import 'package:job_service_app/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:job_service_app/presentation/profilre_set_up_page_screen/profilre_set_up_page_screen.dart';
import 'package:job_service_app/presentation/onboarding_1_applicant_screen/onboarding_1_applicant_screen.dart';
import 'package:job_service_app/presentation/onboarding_2_recruiter_screen/onboarding_2_recruiter_screen.dart';
import 'package:job_service_app/presentation/home_page_1_applicant_container_screen/home_page_1_applicant_container_screen.dart';
import 'package:job_service_app/presentation/home_page_2_recruiter_screen/home_page_2_recruiter_screen.dart';
import 'package:job_service_app/presentation/job_details_one_screen/job_details_one_screen.dart';
import 'package:job_service_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpPageOneScreen = '/sign_up_page_one_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String profilreSetUpPageScreen = '/profilre_set_up_page_screen';

  static const String onboarding1ApplicantScreen =
      '/onboarding_1_applicant_screen';

  static const String onboarding2RecruiterScreen =
      '/onboarding_2_recruiter_screen';

  static const String homePage1ApplicantPage = '/home_page_1_applicant_page';

  static const String homePage1ApplicantContainerScreen =
      '/home_page_1_applicant_container_screen';

  static const String homePage2RecruiterScreen =
      '/home_page_2_recruiter_screen';

  static const String allJobsOnePage = '/all_jobs_one_page';

  static const String allJobsOneTabContainerPage =
      '/all_jobs_one_tab_container_page';

  static const String jobDetailsOneScreen = '/job_details_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpPageOneScreen: (context) => SignUpPageOneScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    profilreSetUpPageScreen: (context) => ProfilreSetUpPageScreen(),
    onboarding1ApplicantScreen: (context) => Onboarding1ApplicantScreen(),
    onboarding2RecruiterScreen: (context) => Onboarding2RecruiterScreen(),
    homePage1ApplicantContainerScreen: (context) =>
        HomePage1ApplicantContainerScreen(),
    homePage2RecruiterScreen: (context) => HomePage2RecruiterScreen(),
    jobDetailsOneScreen: (context) => JobDetailsOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
