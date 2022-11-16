import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar MyAppBar() {
  return AppBar(
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
  );
}
