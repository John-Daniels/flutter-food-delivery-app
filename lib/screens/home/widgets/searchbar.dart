import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliver_app/themes/app_colors.dart';

class BuildSearchPlaceholder extends StatelessWidget {
  const BuildSearchPlaceholder({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: deepGrey,
          ),
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
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.black38,
                        ),
                    disabledBorder: const OutlineInputBorder(
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
      ),
    );
  }
}
