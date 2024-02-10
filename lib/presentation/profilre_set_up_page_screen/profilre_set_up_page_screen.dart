import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:job_service_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';
import 'package:job_service_app/widgets/custom_phone_number.dart';
import 'package:job_service_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilreSetUpPageScreen extends StatelessWidget {
  ProfilreSetUpPageScreen({Key? key}) : super(key: key);

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController highestEducationDegreeController =
      TextEditingController();

  TextEditingController skillAndInterestsController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 20.v),
                            child: Column(children: [
                              _buildStepper(context),
                              SizedBox(height: 16.v),
                              Text("Applicant Profile Setup",
                                  style: CustomTextStyles.titleLargeRoboto),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Phone Number ",
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 2.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 20.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Location",
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 2.v),
                              _buildLocation(context),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Education",
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 2.v),
                              _buildHighestEducationDegree(context),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Interests",
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 2.v),
                              _buildSkillAndInterests(context),
                              SizedBox(height: 32.v),
                              _buildContinueButton(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowRight,
              margin: EdgeInsets.symmetric(horizontal: 24.h))
        ]);
  }

  /// Section Widget
  Widget _buildStepper(BuildContext context) {
    return AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 0,
        barThickness: 1,
        inverted: true,
        stepperList: [StepperData(), StepperData(), StepperData()]);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomPhoneNumber(
        country: selectedCountry,
        controller: phoneNumberController,
        onTap: (Country value) {
          selectedCountry = value;
        });
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
        controller: locationController, hintText: "Enter Location");
  }

  /// Section Widget
  Widget _buildHighestEducationDegree(BuildContext context) {
    return CustomTextFormField(
        controller: highestEducationDegreeController,
        hintText: "Highest education degree attained");
  }

  /// Section Widget
  Widget _buildSkillAndInterests(BuildContext context) {
    return CustomTextFormField(
        controller: skillAndInterestsController,
        hintText: "List skill and interests",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(text: "Continue");
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
