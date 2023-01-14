import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_deliver_app/themes/app_colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.price,
    required this.image,
  });

  final VoidCallback onTap;
  final String title;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 250.h,
      width: 220.w,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    spreadRadius: -2,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  child: InkWell(
                    onTap: onTap,
                    child: Ink(
                      height: 220,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            spreadRadius: -2,
                            color: Colors.grey.shade400,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(height: 8),
                          // title
                          SizedBox(
                            width: 120.w,
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 15),
                          // price
                          Text(
                            'N${price.round()}',
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
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 130,
              height: 130,
              child: Hero(
                tag: title,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:food_deliver_app/themes/app_colors.dart';

// class FoodCard extends StatelessWidget {
//   const FoodCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       // height: 300,
//       child: Stack(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Material(
//                 // ty
//                 child: InkWell(
//                   onTap: () {},
//                   child: Ink(
//                     width: 190,
//                     height: 230,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 40,
//                           spreadRadius: -2,
//                           color: Colors.grey.shade400,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             width: double.maxFinite,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(30),
//                   child: Image.asset(
//                     "assets/images/food1.png",
//                     height: 155,
//                     width: 155,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 // title
//                 const Text(
//                   'Veggie\ntomato mix',
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.clip,
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 15),
//                 // price
//                 Text(
//                   'N1,900',
//                   style: TextStyle(
//                     color: primaryColor,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 17,
//                   ),
//                 ),

//                 const SizedBox(height: 35),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



