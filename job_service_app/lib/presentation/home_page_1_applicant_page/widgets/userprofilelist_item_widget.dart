import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame3,
              height: 159.v,
              width: 251.h,
              radius: BorderRadius.circular(
                16.h,
              ),
            ),
            SizedBox(height: 16.v),
            Text(
              "Ui Researcher at Tech Inn",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 3.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Lagos, Nigeria",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.v),
            Text(
              "Brief Description",
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(
              width: 235.h,
              child: Text(
                "Join our UX/UI design team to create seamless and intuitive user experiences for our digital products. Collaborate with cross-functional teams to conduct user research, to enhance user satisfaction.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack900_2,
              ),
            ),
            SizedBox(height: 13.v),
            CustomOutlinedButton(
              height: 39.v,
              width: 149.h,
              text: "View Details",
              buttonTextStyle: CustomTextStyles.titleMediumPrimary16,
            ),
          ],
        ),
      ),
    );
  }
}
