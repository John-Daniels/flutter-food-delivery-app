// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions = const <Widget>[],
    this.backgroundColor = Colors.transparent,
    this.onBackPress,
  });

  final Widget? leading;
  final VoidCallback? onBackPress;
  final Widget title;
  final List<Widget> actions;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: double.infinity,
      leadingWidth: 100,
      leading: leading ??
          IconButton(
            onPressed: onBackPress,
            iconSize: 18,
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
      title: title,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 90);
}
