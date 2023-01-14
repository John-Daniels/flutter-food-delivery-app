import 'package:flutter/material.dart';
import 'package:food_deliver_app/controllers/home_controller.dart';
import 'package:food_deliver_app/models/food_model.dart';
import 'package:food_deliver_app/screens/food_detail/food_detail.dart';
import 'package:food_deliver_app/screens/home/views/search_view.dart';
import 'package:food_deliver_app/themes/app_colors.dart';
import 'package:food_deliver_app/screens/home/widgets/app_bar.dart';
import 'package:food_deliver_app/screens/home/widgets/bottom_app_bar.dart';
import 'package:food_deliver_app/screens/home/widgets/food_card.dart';
import 'package:food_deliver_app/screens/home/widgets/searchbar.dart';
import 'package:food_deliver_app/widgets/appbar/custom_appbar.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'home_view',
      builder: (state) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            // backgroundColor: Colors.white,
            bottomNavigationBar: MyBottomAppBar(
              index: state.bottomAppBarIndex.value,
              onTap: state.onBottomNavTap,
            ),
            body: PageView(
              controller: state.pageController.value,
              physics: const BouncingScrollPhysics(),
              children: [
                const Home(),
                const Center(child: CircularProgressIndicator()),
                const Center(child: CircularProgressIndicator()),
                Scaffold(
                  appBar: const CustomAppBar(
                    title: Text(
                      'History',
                    ),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: const [],
                    ),
                  ),
                )
                // Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // delish
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      'Delicious\nfood for you',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),

                  BuildSearchPlaceholder(
                    onTap: () {
                      // open search page

                      Get.toNamed(SearchView.routeName);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: defaultPadding + 8),
            // tabbar
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: TabBar(
                labelColor: primaryColor,
                indicatorColor: primaryColor,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                unselectedLabelColor: Colors.grey.shade500,
                indicatorPadding: const EdgeInsets.all(0),
                labelPadding: const EdgeInsets.all(0),
                tabs: [
                  ...(['Foods', 'Drinks', 'Snacks', "Sauce"].map(
                    (tab) => Tab(
                      text: tab,
                      height: 32,
                    ),
                  ))
                ],
              ),
            ),

            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'see more',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // tabbarview
            const SizedBox(
              width: double.infinity,
              height: 300,
              child: TabBarView(
                clipBehavior: Clip.none,
                children: [
                  HomeTabContent(category: 'foods'),
                  HomeTabContent(category: 'drinks'),
                  HomeTabContent(category: 'snacks'),
                  HomeTabContent(category: 'sauce')
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class HomeTabContent extends StatelessWidget {
  const HomeTabContent({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (state) {
        var foods =
            state.foods.where((f) => f.category.contains(category)).toList();
        return ListView.builder(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            Food food = foods[index];
            return FoodCard(
              onTap: () {
                Get.toNamed(
                  FoodDetail.routeName,
                  arguments: food,
                );
              },
              image: food.image,
              price: food.price,
              title: food.title,
            );
          },
          itemCount: foods.length,
        );
      },
    );
  }
}
