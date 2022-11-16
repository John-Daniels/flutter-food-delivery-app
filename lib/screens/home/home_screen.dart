import 'package:flutter/material.dart';
import 'package:food_deliver_app/colors.dart';
import 'package:food_deliver_app/screens/home/widgets/app_bar.dart';
import 'package:food_deliver_app/screens/home/widgets/bottom_app_bar.dart';
import 'package:food_deliver_app/screens/home/widgets/food_card.dart';
import 'package:food_deliver_app/screens/home/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var bottomAppBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: MyBottomAppBar(
          index: bottomAppBarIndex,
          onTap: (index) => setState(() => bottomAppBarIndex = index),
        ),
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
                  children: const [
                    // delish
                    Padding(
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

                    MySearchBar(),
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
              SizedBox(
                width: double.infinity,
                height: 300,
                child: TabBarView(
                  clipBehavior: Clip.none,
                  children: [
                    ...(List.filled(
                      4,
                      ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const FoodCard();
                        },
                        itemCount: 4,
                      ),
                    ))
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
