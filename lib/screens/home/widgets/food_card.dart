import 'package:flutter/material.dart';
import 'package:food_deliver_app/colors.dart';

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
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      spreadRadius: -2,
                      color: Colors.grey.shade400,
                    )
                  ],
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
