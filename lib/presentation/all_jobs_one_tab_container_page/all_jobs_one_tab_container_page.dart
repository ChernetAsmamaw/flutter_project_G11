import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/presentation/all_jobs_one_page/all_jobs_one_page.dart';
import 'package:job_service_app/widgets/app_bar/appbar_title.dart';
import 'package:job_service_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AllJobsOneTabContainerPage extends StatefulWidget {
  const AllJobsOneTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  AllJobsOneTabContainerPageState createState() =>
      AllJobsOneTabContainerPageState();
}

class AllJobsOneTabContainerPageState extends State<AllJobsOneTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search for jobs",
                ),
              ),
              SizedBox(height: 23.v),
              Container(
                height: 31.v,
                width: 268.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Neue Montreal',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: appTheme.black900,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Neue Montreal',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "All Jobs",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Saved Jobs",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 560.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    AllJobsOnePage(),
                    AllJobsOnePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 39.v,
      title: AppbarTitle(
        text: "Jobs",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(24.h, 6.v, 24.h, 8.v),
        ),
      ],
    );
  }
}
