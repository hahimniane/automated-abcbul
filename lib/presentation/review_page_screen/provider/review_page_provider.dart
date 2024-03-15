import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/review_page_model.dart';

/// A provider class for the ReviewPageScreen.
///
/// This provider manages the state of the ReviewPageScreen, including the
/// current reviewPageModelObj
class ReviewPageProvider extends ChangeNotifier {
  TextEditingController writeareviewController = TextEditingController();

  ReviewPageModel reviewPageModelObj = ReviewPageModel();

  @override
  void dispose() {
    super.dispose();
    writeareviewController.dispose();
  }
}
