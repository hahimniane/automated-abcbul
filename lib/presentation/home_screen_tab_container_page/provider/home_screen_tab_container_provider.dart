import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_screen_tab_container_model.dart';

/// A provider class for the HomeScreenTabContainerPage.
///
/// This provider manages the state of the HomeScreenTabContainerPage, including the
/// current homeScreenTabContainerModelObj
class HomeScreenTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeScreenTabContainerModel homeScreenTabContainerModelObj =
      HomeScreenTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
