import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'models/accept_proposal_page_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/accept_proposal_page_provider.dart';

class AcceptProposalPageScreen extends StatefulWidget {
  const AcceptProposalPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AcceptProposalPageScreenState createState() =>
      AcceptProposalPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AcceptProposalPageProvider(),
      child: AcceptProposalPageScreen(),
    );
  }
}

class AcceptProposalPageScreenState extends State<AcceptProposalPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDepthFrameZero(context),
              SizedBox(height: 16.v),
              _buildDepthFrameZero1(context),
              SizedBox(height: 9.v),
              _buildDepthFrameOne(context),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_complete_profile".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildDepthFrameTwo(context),
              SizedBox(height: 22.v),
              Text(
                "lbl_27_50_hr".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 25.v),
              _buildDepthFrameZero2(context),
              SizedBox(height: 28.v),
              _buildDepthFrameZero3(context),
              SizedBox(height: 12.v),
              Container(
                height: 20.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray900,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 144.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          SizedBox(height: 13.v),
          Text(
            "lbl_job_bidding".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_you_re_halfway_there".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 38.h,
              bottom: 28.v,
            ),
            child: Text(
              "lbl_50".tr,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameOne(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder4,
      ),
      child: Container(
        height: 8.v,
        width: 1.h,
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          borderRadius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame010,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_data_entry_specialist".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_san_francisco_ca".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame0Onprimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Text(
              "msg_starts_in_1_week".tr,
              style: CustomTextStyles.titleMediumBold_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 131.h,
            text: "lbl_accept_job".tr,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Container(
              width: 94.h,
              decoration: AppDecoration.fillGray,
              child: Text(
                "lbl_decline_job".tr,
                style: CustomTextStyles.titleMediumBold_2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
