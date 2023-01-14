import 'package:food_deliver_app/models/food_model.dart';
import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  late Rx<Food> food;

  @override
  void onInit() {
    food = (Get.arguments as Food).obs;
    update();

    super.onInit();
  }
}
