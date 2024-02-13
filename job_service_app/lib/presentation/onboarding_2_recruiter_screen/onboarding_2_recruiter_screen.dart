import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';

class Onboarding2RecruiterScreen extends StatelessWidget {
  const Onboarding2RecruiterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 21.h,
            top: 64.v,
            right: 21.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 311.v,
                width: 342.h,
              ),
              SizedBox(height: 75.v),
              Text(
                "Discover The Talent You Need",
                style: CustomTextStyles.titleLargeMontserrat,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 326.h,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Text(
                  "Our algorithms analyze your preferences and qualifications to deliver personalized job recommendations.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeMontserratOnPrimaryContainer
                      .copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Get Started",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 64.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineSmallNeueMontrealOnPrimary,
    );
  }
}
