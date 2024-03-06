import 'package:abcbul/widgets/app_bar/custom_app_bar.dart';
import 'package:abcbul/widgets/app_bar/appbar_leading_image.dart';
import 'package:abcbul/widgets/custom_rating_bar.dart';
import 'package:abcbul/widgets/custom_text_form_field.dart';
import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'models/review_page_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/review_page_provider.dart';

class ReviewPageScreen extends StatefulWidget {
  const ReviewPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReviewPageScreenState createState() => ReviewPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReviewPageProvider(),
      child: ReviewPageScreen(),
    );
  }
}

class ReviewPageScreenState extends State<ReviewPageScreen> {
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDepthFrameZero(context),
              SizedBox(height: 18.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildDepthFrameOne(context),
                      SizedBox(height: 38.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "msg_what_did_you_think".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildDepthFrameThree(context),
                      _buildDepthFrameFour(context),
                      _buildDepthFrameFive(context),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_review".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<ReviewPageProvider,
                            TextEditingController?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.writeareviewController,
                          builder: (context, writeareviewController, child) {
                            return CustomTextFormField(
                              controller: writeareviewController,
                              hintText: "lbl_write_a_review".tr,
                              textInputAction: TextInputAction.done,
                              maxLines: 5,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                        text: "lbl_submit".tr,
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        height: 20.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: appTheme.gray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.v),
          CustomAppBar(
            height: 48.v,
            leadingWidth: double.maxFinite,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgDepth5Frame0Onprimary,
              margin: EdgeInsets.fromLTRB(16.h, 12.v, 350.h, 12.v),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "msg_rate_your_experience".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 28.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 48.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_4_5".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 5.v),
                  CustomRatingBar(
                    initialRating: 0,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "lbl_123_reviews".tr,
                    style: CustomTextStyles.bodyLargeOnPrimary,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "lbl_5".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Container(
                        height: 8.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.75,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_75".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    Text(
                      "lbl_4".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Container(
                        height: 8.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.15,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_15".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 16.v),
                Row(
                  children: [
                    Text(
                      "lbl_3".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Container(
                        height: 8.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.05,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_52".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    Text(
                      "lbl_2".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Container(
                        height: 8.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.03,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_32".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 16.v),
                Row(
                  children: [
                    Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      child: Container(
                        height: 8.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.02,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_22".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "lbl_quality_of_work".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Text(
                "lbl_5".tr,
                style: CustomTextStyles.bodyLargeOnPrimary,
              ),
            ],
          ),
          Text(
            "msg_the_quality_was".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            "lbl_great".tr,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameFour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_punctuality".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_they_were_on_time".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  "lbl_great".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 42.v),
            child: Text(
              "lbl_5".tr,
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameFive(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_communication".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_i_d_like_to_see".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  "lbl_good".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 44.h,
              bottom: 42.v,
            ),
            child: Text(
              "lbl_4".tr,
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
