import 'package:abcbul/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:abcbul/presentation/post_job_page/post_job_page.dart';
import 'package:abcbul/widgets/app_bar/custom_app_bar.dart';
import 'package:abcbul/widgets/app_bar/appbar_title.dart';
import 'package:abcbul/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'package:abcbul/widgets/custom_bottom_bar.dart';
import 'models/new_proposal_page_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/new_proposal_page_provider.dart';

class NewProposalPageScreen extends StatefulWidget {
  const NewProposalPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NewProposalPageScreenState createState() => NewProposalPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewProposalPageProvider(),
      child: NewProposalPageScreen(),
    );
  }
}

class NewProposalPageScreenState extends State<NewProposalPageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDepthFrameNine(
                    context,
                    seniorUXUIDesigner: "msg_senior_ui_ux_designer".tr,
                    date: "msg_date_12_12_2022".tr,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_bid_amount_1000".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_not_viewed_yet".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Container(
                        height: 8.v,
                        width: 358.h,
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
                            value: 0.5,
                            backgroundColor: theme.colorScheme.errorContainer,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_2_of_4_steps_completed".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildDepthFrameZero(context),
                  SizedBox(height: 12.v),
                  _buildDepthFrameFive(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_bid_amount_1200".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_viewed".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 8.v,
                      width: 358.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_3_of_3_steps_completed".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildDepthFrameZero1(context),
                  SizedBox(height: 12.v),
                  _buildDepthFrameNine(
                    context,
                    seniorUXUIDesigner: "msg_senior_ux_ui_designer".tr,
                    date: "msg_date_10_12_2022".tr,
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_bid_amount_800".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_proposals".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDepth4Frame0Onprimary24x24,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 8.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildAccept(BuildContext context) {
    return CustomElevatedButton(
      width: 171.h,
      text: "lbl_accept".tr,
    );
  }

  /// Section Widget
  Widget _buildDecline(BuildContext context) {
    return CustomElevatedButton(
      width: 174.h,
      text: "lbl_decline".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
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
            _buildAccept(context),
            _buildDecline(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameFive(BuildContext context) {
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
            imagePath: ImageConstant.imgDepth3Frame08,
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
                  "msg_senior_product_designer".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_date_11_12_2022".tr,
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
  Widget _buildAccept1(BuildContext context) {
    return CustomElevatedButton(
      width: 171.h,
      text: "lbl_accept".tr,
    );
  }

  /// Section Widget
  Widget _buildDecline1(BuildContext context) {
    return CustomElevatedButton(
      width: 174.h,
      text: "lbl_decline".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAccept1(context),
            _buildDecline1(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildDepthFrameNine(
    BuildContext context, {
    required String seniorUXUIDesigner,
    required String date,
  }) {
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
            imagePath: ImageConstant.imgDepth3Frame09,
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
                  seniorUXUIDesigner,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                Text(
                  date,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.primaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Jobs:
        return AppRoutes.homeScreenTabContainerPage;
      case BottomBarEnum.Proposals:
        return AppRoutes.postJobPage;
      case BottomBarEnum.Messages:
        return "/";
      case BottomBarEnum.Me:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenTabContainerPage:
        return HomeScreenTabContainerPage.builder(context);
      case AppRoutes.postJobPage:
        return PostJobPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
