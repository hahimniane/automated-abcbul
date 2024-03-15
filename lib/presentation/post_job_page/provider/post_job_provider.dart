import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/post_job_model.dart';
import '../models/depthframefive_item_model.dart';

/// A provider class for the PostJobPage.
///
/// This provider manages the state of the PostJobPage, including the
/// current postJobModelObj
class PostJobProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  PostJobModel postJobModelObj = PostJobModel();

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    timeController.dispose();
    cityController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    postJobModelObj.depthframefiveItemList.forEach((element) {
      element.isSelected = false;
    });
    postJobModelObj.depthframefiveItemList[index].isSelected = value;
    notifyListeners();
  }
}
