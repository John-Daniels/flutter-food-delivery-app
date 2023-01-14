// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    required this.title,
    this.leading,
    this.action,
    this.backgroundColor = Colors.white,
  });

  final Widget? leading;
  final Widget title;
  final Widget? action;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: primaryColor,
      color: backgroundColor,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          leading != null
              ? IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Get.back();
                  },
                )
              : leading!,
          title,
          if (action != null) action!
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 100);
}
