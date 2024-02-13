import '../home_page_1_applicant_page/widgets/userprofilelist1_item_widget.dart';
import '../home_page_1_applicant_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:job_service_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage1ApplicantPage extends StatelessWidget {
  HomePage1ApplicantPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search for jobs",
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Recommended For You",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildUserProfileList(context),
                SizedBox(height: 41.v),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Near You",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildUserProfileList1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 46.v,
      title: AppbarSubtitle(
        text: "Good Morning, Jafar",
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(24.h, 9.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 387.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return UserprofilelistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 387.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Userprofilelist1ItemWidget();
          },
        ),
      ),
    );
  }
}
