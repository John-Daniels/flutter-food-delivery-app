import 'package:food_deliver_app/controllers/home_controller.dart';
import 'package:food_deliver_app/models/food_model.dart';
import 'package:get/get.dart';

class FoodDetailController extends GetxController {
  late Rx<Food> food;
  HomeController homeController = Get.find<HomeController>();

  get isFavorite => homeController.favouriteFoods
          .where((element) => element.title == food.value.title)
          .toList()
          .isEmpty
      ? false
      : true;

  toggleFav() {
    homeController.addToFavourite(food.value, isFavorite);

    update();
  }

  @override
  void onInit() {
    food = (Get.arguments as Food).obs;
    update();

    super.onInit();
  }
}
