import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/view_bids_page_model.dart';

/// A provider class for the ViewBidsPageScreen.
///
/// This provider manages the state of the ViewBidsPageScreen, including the
/// current viewBidsPageModelObj
class ViewBidsPageProvider extends ChangeNotifier {
  ViewBidsPageModel viewBidsPageModelObj = ViewBidsPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
