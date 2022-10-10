import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/screens/home/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 35),
        child: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/hamburger.svg'),
                  SvgPicture.asset('assets/icons/shopping-cart.svg'),
                ],
              ),
            ),

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

            const MySearchBar()
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           backgroundColor: Colors.transparent,
//           expandedHeight: MediaQuery.of(context).size.height * 0.3,
//           flexibleSpace: const HeaderWithSearchBox(),
//           toolbarHeight: 250,
//           pinned: true,
//           elevation: 0,
//           // leading: const CircleAvatar(radius: 2, child: Icon(Icons.arrow_back)),
//         ),
//         SliverToBoxAdapter(
//             child: Container(
//           color: Colors.amber,
//           height: 800,
//           child: Column(
//             children: const [],
//           ),
//         ))
//       ],
//     ));
//   }
// }

// class HeaderWithSearchBox extends StatelessWidget {
//   const HeaderWithSearchBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(bottom: 15),
//       height: MediaQuery.of(context).size.height * 0.3,
//       child: Stack(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             height: MediaQuery.of(context).size.height * 0.3 - 30,
//             color: Colors.black.withOpacity(0.9),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Deliver to',
//                           style: Theme.of(context)
//                               .textTheme
//                               .headline5!
//                               .copyWith(color: Colors.grey.shade500),
//                         ),
//                         const SizedBox(height: 4),
//                         Text('Lawanson, ID',
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .headline5!
//                                 .copyWith(color: Colors.white)),
//                       ],
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.transparent,
//                           border: Border.all(
//                               color: Colors.grey.shade600.withOpacity(0.8))),
//                       padding: const EdgeInsets.all(20),
//                       child: const Icon(
//                         Icons.notifications,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             left: 0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 10,
//                 horizontal: 15,
//               ),
//               margin: const EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                       offset: const Offset(1, 3),
//                       blurRadius: 7,
//                       spreadRadius: -4,
//                       color: Colors.black.withOpacity(0.1)),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.search_sharp,
//                     size: 30,
//                     color: Colors.black.withOpacity(0.2),
//                   ),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         enabledBorder: InputBorder.none,
//                         disabledBorder: InputBorder.none,
//                         hintText: 'What are you craving?',
//                         hintStyle:
//                             Theme.of(context).textTheme.subtitle1!.copyWith(
//                                   fontSize: 18,
//                                   color: Colors.black.withOpacity(0.4),
//                                 ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
