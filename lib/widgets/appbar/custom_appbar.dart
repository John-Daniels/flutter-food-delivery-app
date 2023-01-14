// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions = const <Widget>[],
    this.backgroundColor = Colors.transparent,
  });

  final Widget? leading;
  final Widget title;
  final List<Widget> actions;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      foregroundColor: Colors.black,
      toolbarHeight: 300,
      automaticallyImplyLeading: false,
      // centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ??
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Get.back();
                },
              ),
          title,
          Container(),
        ],
      ),
      actions: actions,
    );

    // return Container(
    //   // color: primaryColor,
    //   color: backgroundColor,
    //   height: 100,
    //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       leading != null
    //           ? IconButton(
    //               icon: const Icon(Icons.arrow_back_ios_new),
    //               onPressed: () {
    //                 Get.back();
    //               },
    //             )
    //           : leading!,
    //       title,
    //       if (action != null) action!
    //     ],
    //   ),
    // );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 100);
}
