import '../../../core/app_export.dart';

/// This class is used in the [acceptedjobspage_item_widget] screen.
class AcceptedjobspageItemModel {
  AcceptedjobspageItemModel({
    this.image,
    this.pickUpGroceries,
    this.deliveryInSan,
    this.duration,
    this.id,
  }) {
    image = image ?? ImageConstant.imgDepth5Frame01;
    pickUpGroceries = pickUpGroceries ?? "Pick up groceries at Safeway";
    deliveryInSan = deliveryInSan ?? "Delivery in San Francisco, CA";
    duration = duration ?? "7 days left to start";
    id = id ?? "";
  }

  String? image;

  String? pickUpGroceries;

  String? deliveryInSan;

  String? duration;

  String? id;
}
