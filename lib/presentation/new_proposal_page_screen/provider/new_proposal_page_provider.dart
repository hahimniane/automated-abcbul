import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/new_proposal_page_model.dart';

/// A provider class for the NewProposalPageScreen.
///
/// This provider manages the state of the NewProposalPageScreen, including the
/// current newProposalPageModelObj
class NewProposalPageProvider extends ChangeNotifier {
  NewProposalPageModel newProposalPageModelObj = NewProposalPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
