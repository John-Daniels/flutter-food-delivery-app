import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_deliver_app/controllers/zoom_controller.dart';
import 'package:food_deliver_app/screens/home/views/home_view.dart';
import 'package:food_deliver_app/screens/home/widgets/drawer.dart';
import 'package:food_deliver_app/themes/app_colors.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ZoomController>(
      builder: (_) {
        return ZoomDrawer(
          // style: DrawerStyle.style4,
          controller: _.controls.value,
          angle: 0,
          slideWidth: MediaQuery.of(context).size.width * 0.6,
          menuScreenWidth: double.maxFinite,
          mainScreen: const HomeView(),
          menuBackgroundColor: primaryColor,
          borderRadius: 30,
          androidCloseOnBackTap: true,
          boxShadow: [
            BoxShadow(
              offset: const Offset(-40, 35),
              color: Colors.white.withOpacity(0.5),
              blurRadius: 1,
            ),
          ],
          menuScreen: MenuDrawer(),
        );
      },
    );
  }
}
