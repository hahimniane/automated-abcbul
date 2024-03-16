import 'package:abcbul/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:abcbul/presentation/post_job_page/post_job_page.dart';
import 'package:abcbul/widgets/app_bar/custom_app_bar.dart';
import 'package:abcbul/widgets/app_bar/appbar_title.dart';
import 'package:abcbul/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'package:abcbul/widgets/custom_bottom_bar.dart';
import 'models/view_bids_page_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/view_bids_page_provider.dart';

class ViewBidsPageScreen extends StatefulWidget {
  const ViewBidsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ViewBidsPageScreenState createState() => ViewBidsPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewBidsPageProvider(),
      child: ViewBidsPageScreen(),
    );
  }
}

class ViewBidsPageScreenState extends State<ViewBidsPageScreen> {
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDepthFrameOne(context),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_job_expires_in_3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildDepthFrameThree(context),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_job_expires_in_3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildDepthFrameFive(context),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_job_expires_in_3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 12.v),
              _buildViewAllBids(context),
            ],
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
        text: "lbl_bids".tr,
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
  Widget _buildAcceptBid(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 104.h,
      text: "lbl_accept_bid".tr,
      margin: EdgeInsets.symmetric(vertical: 12.v),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame011,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
            child: _buildDepthFrameTwo(
              context,
              dataEntryClerk: "msg_data_entry_clerk".tr,
              price: "msg_14_00_bid_by".tr,
            ),
          ),
          _buildAcceptBid(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptBid1(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 104.h,
      text: "lbl_accept_bid".tr,
      margin: EdgeInsets.symmetric(vertical: 12.v),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDepthFrameThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame012,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
            child: _buildDepthFrameTwo(
              context,
              dataEntryClerk: "msg_data_entry_clerk".tr,
              price: "msg_14_00_bid_by2".tr,
            ),
          ),
          _buildAcceptBid1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcceptBid2(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 104.h,
      text: "lbl_accept_bid".tr,
      margin: EdgeInsets.symmetric(vertical: 16.v),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame013,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_data_entry_clerk".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "msg_14_00_bid_by3".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          _buildAcceptBid2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewAllBids(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_view_all_bids".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
  Widget _buildDepthFrameTwo(
    BuildContext context, {
    required String dataEntryClerk,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dataEntryClerk,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
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
