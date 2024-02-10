import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:job_service_app/widgets/app_bar/appbar_title.dart';
import 'package:job_service_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_service_app/widgets/custom_elevated_button.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';

class JobDetailsOneScreen extends StatelessWidget {
  const JobDetailsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFrame200,
                              height: 208.v,
                              width: 339.h,
                              radius: BorderRadius.circular(16.h)),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("Product Designer at Design Sol",
                                      style: CustomTextStyles
                                          .headlineSmallNeueMontreal))),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("Description",
                                      style: CustomTextStyles.titleMedium16))),
                          SizedBox(height: 6.v),
                          SizedBox(
                              width: 340.h,
                              child: Text(
                                  "Design Solutions Co is seeking a talented Product Designer to join our creative team. As a Product Designer, you will play a crucial role in shaping the user experience of our digital products. You will collaborate closely with cross-functional teams to transform concepts into visually stunning and intuitive interfaces that meet user needs.",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.bodyMediumBlack900_1)),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("Requirement",
                                      style: CustomTextStyles.titleMedium16))),
                          SizedBox(height: 6.v),
                          Container(
                              width: 325.h,
                              margin: EdgeInsets.only(left: 8.h, right: 9.h),
                              child: Text(
                                  "Bachelor's degree in Design, Interaction Design, or related field.\nProven experience with UI/UX design for web and mobile applications.\nProficiency in design tools such as Adobe Creative Suite, Sketch, or Figma.\nStrong portfolio showcasing your design work and problem-solving skills.\nExcellent communication skills and the ability to work collaboratively.",
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.bodyMediumBlack900_1)),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("Responsibilities",
                                      style: CustomTextStyles.titleMedium16))),
                          SizedBox(height: 6.v),
                          Container(
                              width: 330.h,
                              margin: EdgeInsets.only(left: 8.h, right: 4.h),
                              child: Text(
                                  "Collaborate with product managers and developers to define project goals and user requirements.\nCreate wireframes, prototypes, and high-fidelity designs for digital products.\nConduct user research and usability testing to gather feedback for iterative design improvements.\nStay updated on industry trends and best practices to enhance our design processesent communication skills and the ability to work collaboratively.",
                                  maxLines: 9,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      CustomTextStyles.bodyMediumBlack900_1)),
                          SizedBox(height: 21.v),
                          _buildJobDetailsOne(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 31.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 2.v, bottom: 4.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Job Details"));
  }

  /// Section Widget
  Widget _buildJobDetailsOne(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              height: 38.v,
              text: "Apply Now",
              margin: EdgeInsets.only(right: 10.h))),
      Expanded(
          child: CustomOutlinedButton(
              height: 38.v,
              text: "Add To Saved",
              margin: EdgeInsets.only(left: 10.h),
              buttonStyle: CustomButtonStyles.outlinePrimary,
              buttonTextStyle: CustomTextStyles.titleMediumPrimary))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
