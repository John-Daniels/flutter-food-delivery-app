import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/controllers/home_controller.dart';
import 'package:food_deliver_app/models/food_model.dart';
import 'package:food_deliver_app/screens/food_detail/food_detail.dart';
import 'package:food_deliver_app/screens/home/widgets/food_card.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static String routeName = '/home/search';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (state) {
      // var search = state.searchController.value.text;
      var foods = state.searchFoods;

      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      iconSize: 20,
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: TextFormField(
                        style: const TextStyle(fontSize: 17),
                        controller: state.searchController.value,
                        // textAlign: TextAlign.justify,
                        cursorColor: Colors.black54,
                        decoration: _inputDecoration,
                        autofocus: true,
                        onChanged: state.onSearch,
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 20),
              RoundCornerBg(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        foods.isEmpty
                            ? ""
                            : 'Found ${foods.length} result${foods.length > 1 ? 's' : ''}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    if (foods.isEmpty)
                      Expanded(
                        child: NoResults(
                          search: state.searchController.value.text,
                        ),
                      )
                    else
                      SearchGrid(foods: foods)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class NoResults extends StatelessWidget {
  const NoResults({super.key, required this.search});

  final String search;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/feather_search.svg'),
          const SizedBox(height: 38),
          Text(
            search.isEmpty ? "input your best choice" : 'Item not found!',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
          ),
          const SizedBox(height: 17),
          SizedBox(
            width: 280.w,
            child: Text(
              search.isEmpty
                  ? "Try Peperroni pizza"
                  : 'Try searching the item with a different keyword.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 17,
                    // color: deepGrey,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchGrid extends StatelessWidget {
  const SearchGrid({
    Key? key,
    required this.foods,
  }) : super(key: key);

  final RxList<Food> foods;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          crossAxisSpacing: 0,
          // childAspectRatio: 4 / 3,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          Food food = foods[index];

          return Container(
            // margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 8),

            child: FoodCard(
              onTap: () {
                Get.toNamed(FoodDetail.routeName, arguments: food);
              },
              image: food.image,
              price: food.price,
              title: food.title,
            ),
          );
        },
      ),
    );
  }
}

const _inputDecoration = InputDecoration(
  hintStyle: TextStyle(fontSize: 17),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide.none,
  ),
  hintText: 'Spicy Chicken',
);

Widget RoundCornerBg({required Widget child}) {
  return Expanded(
      child: Container(
    width: double.maxFinite,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(40),
      ),
    ),
    child: child,
  ));
}
