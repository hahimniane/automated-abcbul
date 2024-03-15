import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/logout_confirmation_model.dart';

/// A provider class for the LogoutConfirmationScreen.
///
/// This provider manages the state of the LogoutConfirmationScreen, including the
/// current logoutConfirmationModelObj
class LogoutConfirmationProvider extends ChangeNotifier {
  LogoutConfirmationModel logoutConfirmationModelObj =
      LogoutConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
