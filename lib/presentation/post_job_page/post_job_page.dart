import 'package:abcbul/widgets/custom_text_form_field.dart';
import 'models/depthframefive_item_model.dart';
import '../post_job_page/widgets/depthframefive_item_widget.dart';
import 'package:abcbul/widgets/custom_elevated_button.dart';
import 'models/post_job_model.dart';
import 'package:flutter/material.dart';
import 'package:abcbul/core/app_export.dart';
import 'provider/post_job_provider.dart';

// ignore_for_file: must_be_immutable
class PostJobPage extends StatefulWidget {
  const PostJobPage({Key? key})
      : super(
          key: key,
        );

  @override
  PostJobPageState createState() => PostJobPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostJobProvider(),
      child: PostJobPage(),
    );
  }
}

class PostJobPageState extends State<PostJobPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildDepthFrameZero(context),
                  SizedBox(height: 12.v),
                  _buildTitle(context),
                  SizedBox(height: 24.v),
                  _buildDescription(context),
                  SizedBox(height: 24.v),
                  _buildTime(context),
                  SizedBox(height: 24.v),
                  _buildCity(context),
                  SizedBox(height: 28.v),
                  _buildDepthFrameFive(context),
                  SizedBox(height: 16.v),
                  _buildDepthFrameSix(context),
                  SizedBox(height: 12.v),
                  _buildPostJob(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameZero(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 9.v,
            ),
            child: Text(
              "lbl_upload_job".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDepth3Frame2,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(
              left: 85.h,
              top: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Selector<PostJobProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.titleController,
        builder: (context, titleController, child) {
          return CustomTextFormField(
            controller: titleController,
            hintText: "lbl_title".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Selector<PostJobProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.descriptionController,
        builder: (context, descriptionController, child) {
          return CustomTextFormField(
            controller: descriptionController,
            hintText: "lbl_description".tr,
            maxLines: 5,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Selector<PostJobProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.timeController,
        builder: (context, timeController, child) {
          return CustomTextFormField(
            controller: timeController,
            hintText: "msg_time_to_complete".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Selector<PostJobProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.cityController,
        builder: (context, cityController, child) {
          return CustomTextFormField(
            controller: cityController,
            hintText: "lbl_city".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Consumer<PostJobProvider>(
          builder: (context, provider, child) {
            return Wrap(
              runSpacing: 11.98.v,
              spacing: 11.98.h,
              children: List<Widget>.generate(
                provider.postJobModelObj.depthframefiveItemList.length,
                (index) {
                  DepthframefiveItemModel model =
                      provider.postJobModelObj.depthframefiveItemList[index];

                  return DepthframefiveItemWidget(
                    model,
                    onSelectedChipView1: (value) {
                      provider.onSelectedChipView1(index, value);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDepthFrameSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgDepth3Frame0,
        height: 238.v,
        width: 358.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPostJob(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_post_job".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }
}
