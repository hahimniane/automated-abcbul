import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_page_model.dart';

/// A provider class for the ProfilePageScreen.
///
/// This provider manages the state of the ProfilePageScreen, including the
/// current profilePageModelObj
class ProfilePageProvider extends ChangeNotifier {
  ProfilePageModel profilePageModelObj = ProfilePageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
