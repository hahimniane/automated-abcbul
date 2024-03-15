import 'package:abcbul/widgets/app_bar/custom_app_bar.dart';
import 'package:abcbul/widgets/app_bar/appbar_title.dart';
import 'package:abcbul/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'models/logout_confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/logout_confirmation_provider.dart';

class LogoutConfirmationScreen extends StatefulWidget {
  const LogoutConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LogoutConfirmationScreenState createState() =>
      LogoutConfirmationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogoutConfirmationProvider(),
      child: LogoutConfirmationScreen(),
    );
  }
}

class LogoutConfirmationScreenState extends State<LogoutConfirmationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_are_you_sure".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "msg_you_re_about_to".tr,
                  style: CustomTextStyles.bodyLargeOnPrimary,
                ),
              ),
              SizedBox(height: 21.v),
              _buildDepthFrameZero(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_logout".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDepth3Frame2,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 8.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              width: 176.h,
              text: "lbl_log_out2".tr,
            ),
            Container(
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(
                horizontal: 56.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                width: 56.h,
                decoration: AppDecoration.fillGray,
                child: Text(
                  "lbl_cancel".tr,
                  style: CustomTextStyles.titleMediumBold_1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
