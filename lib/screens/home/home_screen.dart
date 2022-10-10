import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/colors.dart';
import 'package:food_deliver_app/screens/home/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: primaryColor,
        body: SizedBox(
          width: double.infinity,
          child: ListView(
            children: [
              // appbar
              Container(
                padding: const EdgeInsets.only(
                  left: 27,
                  right: 27,
                  top: 35,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/hamburger.svg',
                      color: Colors.black45,
                    ),
                    SvgPicture.asset('assets/icons/shopping-cart.svg'),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // delish
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        'Delicious\nfood for you',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                      ),
                    ),

                    const MySearchBar(),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding + 8),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: TabBar(
                  labelColor: primaryColor,
                  indicatorColor: primaryColor,
                  unselectedLabelColor: Colors.grey.shade500,
                  indicatorPadding: const EdgeInsets.all(0),
                  labelPadding: const EdgeInsets.all(0),

                  // indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    ...(['Foods', 'Drinks', 'Snacks', "Sauce"].map((tab) => Tab(
                          text: tab,
                          height: 32,
                        )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
