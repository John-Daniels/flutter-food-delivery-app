import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_deliver_app/themes/app_colors.dart';
import 'package:food_deliver_app/screens/auth/widgets/login.dart';
import 'package:food_deliver_app/screens/auth/widgets/signup.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static String routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: backgroundColor,
              expandedHeight: 380.h,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 4),
                      spreadRadius: -3,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              bottom: const _TabBar(),
            ),

            //
            SliverToBoxAdapter(
              child: SizedBox(
                height: (MediaQuery.of(context).size.height * 0.62).h,
                child: const TabBarView(
                  children: [
                    Login(),
                    Signup(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget implements PreferredSize {
  const _TabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      type: MaterialType.transparency,
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(40),
      ),
      child: TabBar(
        labelColor: primaryColor,
        indicatorColor: primaryColor,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: const [
          Tab(
            text: '         Login          ',
          ),
          Tab(
            text: '        Sign-up         ',
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => Container();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 50);
}
