import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItemModel {
  final String title;
  final IconData icon;

  DrawerItemModel({required this.title, required this.icon});
}

class MenuDrawer extends StatelessWidget {
  MenuDrawer({
    Key? key,
  }) : super(key: key);

  List drawerItems = [
    DrawerItemModel(
      title: 'Profile',
      icon: CupertinoIcons.profile_circled,
    ),
    DrawerItemModel(
      title: 'Orders',
      icon: Icons.shopping_cart_checkout,
    ),
    DrawerItemModel(
      title: 'Offer and promo',
      icon: Icons.local_offer_outlined,
    ),
    DrawerItemModel(
      title: 'Privacy and policy',
      icon: Icons.sticky_note_2_outlined,
    ),
    DrawerItemModel(
      title: 'Security',
      icon: Icons.security_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.45,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                DrawerItemModel item = drawerItems[index];
                return DrawerItem(item: item);
              },
              separatorBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(left: 38),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 24,
                  ),
                  height: 1,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
          TextButton.icon(
            style: drawerTextBs,
            onPressed: () {},
            icon: const Text(
              'Sign-out',
              style: drawerLabelTs,
            ),
            label: const Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: drawerTextBs,
      icon: Icon(
        item.icon,
        color: Colors.white,
        size: 30,
      ),
      label: Text(
        item.title,
        style: drawerLabelTs,
      ),
    );
  }
}

const drawerLabelTs = TextStyle(
  fontSize: 17,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

var drawerTextBs = TextButton.styleFrom(
  alignment: Alignment.centerLeft,
  padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
);
