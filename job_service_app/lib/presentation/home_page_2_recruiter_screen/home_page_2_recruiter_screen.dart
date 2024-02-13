import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/presentation/all_jobs_one_tab_container_page/all_jobs_one_tab_container_page.dart';
import 'package:job_service_app/presentation/home_page_1_applicant_page/home_page_1_applicant_page.dart';
import 'package:job_service_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:job_service_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_bottom_bar.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';
import 'package:job_service_app/widgets/custom_search_view.dart';

class HomePage2RecruiterScreen extends StatelessWidget {
  HomePage2RecruiterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 21.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search for previous posts",
                            hintStyle: CustomTextStyles
                                .bodyLargeMontserratOnErrorContainer,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Vacancies Made By Company",
                            style: CustomTextStyles.titleLargeMontserrat_1,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame3,
                          height: 186.v,
                          width: 339.h,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                          margin: EdgeInsets.only(left: 3.h),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Ui Researcher at Tech Inn",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "Lagos, Nigeria",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Brief Description",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Container(
                          width: 325.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            right: 19.h,
                          ),
                          child: Text(
                            "Join our UX/UI design team to create seamless and intuitive user experiences for our digital products. Collaborate with cross-functional teams to conduct user research, to enhance user satisfaction.",
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.bodyMediumMontserratBlack900,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        CustomOutlinedButton(
                          height: 40.v,
                          text: "View Applications  Made",
                          margin: EdgeInsets.only(
                            left: 3.h,
                            right: 81.h,
                          ),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumMontserratPrimary,
                        ),
                        SizedBox(height: 25.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame31,
                          height: 159.v,
                          width: 344.h,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Text(
                          "Backend Dev at Data Sys ",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 3.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLinkedin,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Abuja, Nigeria",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "Brief Description",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 240.h,
                          child: Text(
                            "Join our team to build robust and scalable server-side solutions. You'll be responsible for optimizing database performance and ensuring the reliability of our applications.",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900_2,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomOutlinedButton(
                          height: 39.v,
                          width: 149.h,
                          text: "View Details",
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimary16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      title: AppbarSubtitle(
        text: "Good Morning, Tech Inn",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 13.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
