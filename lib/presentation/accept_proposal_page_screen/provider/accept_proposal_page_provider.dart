import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/accept_proposal_page_model.dart';

/// A provider class for the AcceptProposalPageScreen.
///
/// This provider manages the state of the AcceptProposalPageScreen, including the
/// current acceptProposalPageModelObj
class AcceptProposalPageProvider extends ChangeNotifier {
  AcceptProposalPageModel acceptProposalPageModelObj =
      AcceptProposalPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
