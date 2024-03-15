import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/notification_page_model.dart';

/// A provider class for the NotificationPageScreen.
///
/// This provider manages the state of the NotificationPageScreen, including the
/// current notificationPageModelObj
class NotificationPageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  NotificationPageModel notificationPageModelObj = NotificationPageModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
