import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:food_deliver_app/models/food_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var bottomAppBarIndex = 0.obs;
  var pageController = PageController().obs;

  var foods = <Food>[].obs;

  var searchController = TextEditingController().obs;
  var searchFoods = <Food>[].obs;

  @override
  void onReady() async {
    var res = await rootBundle.loadString('assets/data/food.json');

    List data = json.decode(res);
    foods.value = data.map((f) => Food.fromJson(f)).toList();

    update();

    super.onReady();
  }

  onBottomNavTap<ValueChanged>(int index) {
    bottomAppBarIndex.value = index;

    pageController.value.animateToPage(
      bottomAppBarIndex.value,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );

    update(['home_view']);
  }

  onSearch<ValueChanged>(search) {
    searchFoods.value = foods
        .where((food) =>
            search.isEmpty ? false : food.title.toLowerCase().contains(search))
        .toList();

    update();
  }
}
