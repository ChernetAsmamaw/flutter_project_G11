import '../all_jobs_one_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AllJobsOnePage extends StatefulWidget {
  const AllJobsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  AllJobsOnePageState createState() => AllJobsOnePageState();
}

class AllJobsOnePageState extends State<AllJobsOnePage>
    with AutomaticKeepAliveClientMixin<AllJobsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildSixty(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackendDeveloper(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 133.h,
      text: "Backend Developer",
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildAwsArchitect(BuildContext context) {
    return CustomElevatedButton(
      height: 25.v,
      width: 103.h,
      text: "AWS Architect",
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 108.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        "Product Design",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ),
                    Container(
                      width: 134.h,
                      margin: EdgeInsets.only(left: 4.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        "Frontend Developer",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                    Container(
                      width: 116.h,
                      margin: EdgeInsets.only(left: 4.h),
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        "Software Engineering",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                    Spacer(
                      flex: 25,
                    ),
                    _buildBackendDeveloper(context),
                    Spacer(
                      flex: 74,
                    ),
                    _buildAwsArchitect(context),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23.v),
            Padding(
              padding: EdgeInsets.only(right: 48.h),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 24.v,
                  );
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
