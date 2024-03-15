import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/bid_page_model.dart';

/// A provider class for the BidPageScreen.
///
/// This provider manages the state of the BidPageScreen, including the
/// current bidPageModelObj
class BidPageProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  TextEditingController hoursController = TextEditingController();

  BidPageModel bidPageModelObj = BidPageModel();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    hoursController.dispose();
  }
}
