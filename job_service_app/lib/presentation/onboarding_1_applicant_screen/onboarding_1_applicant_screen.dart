import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';

class Onboarding1ApplicantScreen extends StatelessWidget {
  const Onboarding1ApplicantScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 450.v),
              _buildOnboardingApplicant(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingApplicant(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 144.v),
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Text(
                "Discover Tailored Job Matches",
                style: CustomTextStyles.titleLargeMontserrat,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 326.h,
                margin: EdgeInsets.symmetric(horizontal: 7.h),
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
              SizedBox(height: 129.v),
              CustomElevatedButton(
                text: "Get Started",
                buttonTextStyle:
                    CustomTextStyles.headlineSmallNeueMontrealOnPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
