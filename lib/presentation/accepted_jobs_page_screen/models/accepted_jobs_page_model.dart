import '../../../core/app_export.dart';
import 'acceptedjobspage_item_model.dart';

class AcceptedJobsPageModel {
  List<AcceptedjobspageItemModel> acceptedjobspageItemList = [
    AcceptedjobspageItemModel(
        image: ImageConstant.imgDepth5Frame01,
        pickUpGroceries: "Pick up groceries at Safeway",
        deliveryInSan: "Delivery in San Francisco, CA",
        duration: "7 days left to start"),
    AcceptedjobspageItemModel(
        image: ImageConstant.imgDepth5Frame02,
        pickUpGroceries: "Pick up food from Little Star Pizza",
        deliveryInSan: "Delivery in San Francisco, CA",
        duration: "5 days left to start"),
    AcceptedjobspageItemModel(
        image: ImageConstant.imgDepth5Frame03,
        pickUpGroceries: "Pick up laundry at Washio",
        deliveryInSan: "Delivery in San Francisco, CA",
        duration: "2 days left to start")
  ];
}
