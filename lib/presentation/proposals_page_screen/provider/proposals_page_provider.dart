import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/proposals_page_model.dart';

/// A provider class for the ProposalsPageScreen.
///
/// This provider manages the state of the ProposalsPageScreen, including the
/// current proposalsPageModelObj
class ProposalsPageProvider extends ChangeNotifier {
  ProposalsPageModel proposalsPageModelObj = ProposalsPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
