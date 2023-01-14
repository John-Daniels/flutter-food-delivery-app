import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/controllers/zoom_controller.dart';
import 'package:get/get.dart';

AppBar MyAppBar() {
  var zoomDrawer = Get.find<ZoomController>();

  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 70,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            zoomDrawer.toggleDrawer();
          },
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
  );
}
