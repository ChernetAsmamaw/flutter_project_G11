import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';
import 'package:job_service_app/widgets/another_stepper.dart';
import 'package:job_service_app/dto/stepper_data.dart';
import 'package:job_service_app/presentation/applicant_sign_up_page.dart';
import 'package:job_service_app/presentation/recruiter_sign_up_page.dart';

class SignUpPageOneScreen extends StatelessWidget {
  const SignUpPageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildStepper(context),
              SizedBox(height: 19.v),
              Text(
                "Sign Up Page",
                style: CustomTextStyles.titleLargeMedium,
              ),
              Spacer(
                flex: 32,
              ),
              CustomElevatedButton(
                height: 55.v,
                width: 226.h,
                text: "Sign Up as an Applicant",
                buttonTextStyle: CustomTextStyles.bodyMediumRobotoOnPrimary,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ApplicantSignUpPage()),
                  );
                },
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                height: 56.v,
                width: 226.h,
                text: "Sign Up as a Recruiter",
                buttonTextStyle: CustomTextStyles.bodyMediumRobotoOnPrimary,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RecruiterSignUpPage()),
                  );
                },
              ),
              Spacer(
                flex: 67,
              ),
              Text(
                "Already Registered?",
                style: CustomTextStyles.titleSmallSFProDisplayBlack900,
              ),
              SizedBox(height: 17.v),
              Text(
                "Sign In",
                style: CustomTextStyles.titleMediumSFProDisplayPrimary,
              ),
              SizedBox(height: 71.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
        margin: EdgeInsets.only(
          left: 24.h,
          right: 342.h,
        ),
      ),
    );
  }

  Widget _buildStepper(BuildContext context) {
    return AnotherStepper(
      stepperDirection: Axis.horizontal,
      activeIndex: 0,
      barThickness: 1,
      inverted: true,
      stepperList: [
        StepperData(),
        StepperData(),
        StepperData(),
      ],
    );
  }
}
