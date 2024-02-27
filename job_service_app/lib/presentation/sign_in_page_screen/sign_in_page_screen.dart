import 'package:job_service_app/core/utils/validation_fuctions.dart';
import 'package:job_service_app/localization/app_localization.dart';
import 'package:job_service_app/widgets/custom_text_form_field.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';
import 'models/sign_in_page_model.dart';
import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'provider/sign_in_page_provider.dart';
import 'package:job_service_app/domain/googleauth/google_auth_helper.dart';
import 'package:provider/provider.dart';

class SignInPageScreen extends StatefulWidget {
  const SignInPageScreen({Key? key}) : super(key: key);

  @override
  SignInPageScreenState createState() => SignInPageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignInPageProvider(), child: SignInPageScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignInPageScreenState extends State<SignInPageScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                horizontal: 22.h, vertical: 44.v),
                            child: Column(children: [
                              Container(
                                  width: 303.h,
                                  margin:
                                      EdgeInsets.only(left: 23.h, right: 18.h),
                                  child: Text("msg_welcome_to_back".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.displaySmall)),
                              Spacer(),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_e_mail".tr,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 6.v),
                              _buildEmail(context),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_password".tr,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 6.v),
                              _buildPassword(context),
                              SizedBox(height: 48.v),
                              _buildSignIn(context),
                              SizedBox(height: 31.v),
                              _buildOrBreaker(context),
                              SizedBox(height: 15.v),
                              _buildSignInWithApple(context),
                              SizedBox(height: 12.v),
                              _buildSignInWithGoogle(context),
                              SizedBox(height: 43.v),
                              Text("msg_don_t_have_an_account".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 18.v),
                              Text("lbl_sign_up".tr,
                                  style: CustomTextStyles
                                      .titleMediumMontserratPrimary),
                              SizedBox(height: 7.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignInPageProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "msg_enter_email_here".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(8.h, 12.v, 30.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsup,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Selector<SignInPageProvider, TextEditingController?>(
        selector: (context, provider) => provider.passwordController,
        builder: (context, passwordController, child) {
          return CustomTextFormField(
              controller: passwordController,
              hintText: "msg_enter_password_here".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(9.h, 10.v, 30.h, 7.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 41.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
              contentPadding:
                  EdgeInsets.only(top: 11.v, right: 30.h, bottom: 11.v));
        });
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_in".tr);
  }

  /// Section Widget
  Widget _buildOrBreaker(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 8.v),
              child: SizedBox(width: 150.h, child: Divider())),
          Text("lbl_or".tr, style: theme.textTheme.labelLarge),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 8.v),
              child: SizedBox(width: 150.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapSignInWithGoogle(context);
        });
  }

  onTapSignInWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
});
}
}