import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/accepted_jobs_page_model.dart';
import '../models/acceptedjobspage_item_model.dart';

/// A provider class for the AcceptedJobsPageScreen.
///
/// This provider manages the state of the AcceptedJobsPageScreen, including the
/// current acceptedJobsPageModelObj
class AcceptedJobsPageProvider extends ChangeNotifier {
  AcceptedJobsPageModel acceptedJobsPageModelObj = AcceptedJobsPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
