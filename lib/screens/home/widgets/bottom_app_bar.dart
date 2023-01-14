import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/themes/app_colors.dart';

class MyBottomAppBar extends StatelessWidget {
  final int index;
  final Function(int) onTap;
  const MyBottomAppBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeShadow = [
      BoxShadow(
        blurRadius: 25,
        spreadRadius: 5,
        color: primaryColor.withOpacity(0.5),
      )
    ];
    bool check(int i) => index == i;
    return BottomAppBar(
      elevation: 0,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => onTap(0),
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: check(0) ? activeShadow : []),
                child: Icon(
                  Icons.home_filled,
                  size: 28,
                  color: check(0) ? primaryColor : Colors.grey.shade400,
                ),
              ),
            ),
            IconButton(
              onPressed: () => onTap(1),
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: check(1) ? activeShadow : []),
                child: SvgPicture.asset(
                  'assets/icons/heart_border.svg',
                  color: check(1) ? primaryColor : Colors.grey.shade400,
                ),
              ),
            ),
            IconButton(
              onPressed: () => onTap(2),
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: check(2) ? activeShadow : []),
                child: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: check(2) ? primaryColor : Colors.grey.shade400,
                ),
              ),
            ),
            IconButton(
              onPressed: () => onTap(3),
              icon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: check(3) ? activeShadow : []),
                child: SvgPicture.asset(
                  'assets/icons/history_icon.svg',
                  color: check(3) ? primaryColor : Colors.grey.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
