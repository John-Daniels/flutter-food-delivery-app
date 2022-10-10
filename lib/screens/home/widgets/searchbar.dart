import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/colors.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: deepGrey,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/icons/search_icon.svg'),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.grey.shade700),
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.black38,
                      ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
