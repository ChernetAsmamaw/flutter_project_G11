import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';
import 'package:job_service_app/widgets/custom_text_form_field.dart';

class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 20.v,
                ),
                child: Column(
                  children: [
                    _buildStepper(context),
                    SizedBox(height: 16.v),
                    Text(
                      "Sign Up ",
                      style: CustomTextStyles.titleLargeRoboto,
                    ),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Full Name*",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildFullName(context),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "E-mail*",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildEmail(context),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password*",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildPassword(context),
                    SizedBox(height: 32.v),
                    _buildSignUpButton(context),
                    SizedBox(height: 36.v),
                    _buildRowFrame(context),
                    SizedBox(height: 15.v),
                    _buildSignInWithAppleButton(context),
                    SizedBox(height: 12.v),
                    _buildSignInWithGoogleButton(context),
                    SizedBox(height: 44.v),
                    Text(
                      "Already Registered?",
                      style: CustomTextStyles.titleSmallSFProDisplayBlack900,
                    ),
                    SizedBox(height: 17.v),
                    Text(
                      "Sign In",
                      style: CustomTextStyles.titleMediumSFProDisplayPrimary,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
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

  /// Section Widget
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

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "Enter Your Name Here",
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 12.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 15.v,
        right: 30.h,
        bottom: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "design@gmail.com",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 12.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsup,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 15.v,
        right: 30.h,
        bottom: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(8.h, 12.v, 30.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }

  /// Section Widget
  Widget _buildRowFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 150.h,
            child: Divider(),
          ),
        ),
        Text(
          "or",
          style: CustomTextStyles.labelLargeBlack900,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 8.v,
          ),
          child: SizedBox(
            width: 150.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign In with Apple",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgApple,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign In with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }
}
