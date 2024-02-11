import 'package:flutter/material.dart';
import 'package:job_service_app/core/app_export.dart';
import 'package:job_service_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame18,
          height: 157.v,
          width: 168.h,
          radius: BorderRadius.circular(
            17.h,
          ),
          margin: EdgeInsets.only(top: 1.v),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 141.h,
              child: Text(
                "Product Designer at Design Sol",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumMontserratBlack900_1,
              ),
            ),
            SizedBox(height: 1.v),
            SizedBox(
              width: 114.h,
              child: Text(
                "If you passionate about creating user-centric designs? Join our design team and collaborate with cross-functional teams to design intuitive and visually appealing user interfaces.",
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ),
            SizedBox(height: 2.v),
            CustomOutlinedButton(
              height: 34.v,
              width: 96.h,
              text: "View Details",
              buttonTextStyle: theme.textTheme.labelLarge!,
            ),
          ],
        ),
      ],
    );
  }
}
