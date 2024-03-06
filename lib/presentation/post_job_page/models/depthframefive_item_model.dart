import '../../../core/app_export.dart';

/// This class is used in the [depthframefive_item_widget] screen.
class DepthframefiveItemModel {
  DepthframefiveItemModel({
    this.open,
    this.isSelected,
  }) {
    open = open ?? "Open";
    isSelected = isSelected ?? false;
  }

  String? open;

  bool? isSelected;
}
