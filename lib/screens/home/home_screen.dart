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
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 28,
                    color: primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/heart_border.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/user.svg'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/history_icon.svg'),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/hamburger.svg',
                  color: Colors.black45,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/shopping-cart.svg'),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const FoodCard();
                  },
                  itemCount: 4,
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

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      // height: 300,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 190,
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 195,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/food1.png",
                    height: 155,
                    width: 155,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                // title
                const Text(
                  'Veggie\ntomato mix',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                // price
                Text(
                  'N1,900',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
