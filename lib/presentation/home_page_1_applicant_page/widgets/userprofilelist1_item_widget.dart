import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  const Userprofilelist1ItemWidget({Key? key})
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
              imagePath: ImageConstant.imgFrame31,
              height: 159.v,
              width: 251.h,
              radius: BorderRadius.circular(
                16.h,
              ),
            ),
            SizedBox(height: 16.v),
            Text(
              "Backend Dev at Data Sys ",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 4.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedin,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Abuja, Nigeria",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Text(
              "Brief Description",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 240.h,
              child: Text(
                "Join our team to build robust and scalable server-side solutions. You'll be responsible for optimizing database performance and ensuring the reliability of our applications.",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack900_2,
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              width: 149.h,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Text(
                "View Details",
                style: CustomTextStyles.titleMediumPrimary16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
