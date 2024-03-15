import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_screen_model.dart';

/// A provider class for the HomeScreenPage.
///
/// This provider manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenProvider extends ChangeNotifier {
  HomeScreenModel homeScreenModelObj = HomeScreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
