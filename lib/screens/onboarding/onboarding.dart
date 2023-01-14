import 'package:flutter/material.dart';
import 'package:food_deliver_app/themes/app_colors.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:food_deliver_app/screens/auth/auth_screen.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 60.h, bottom: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.w,
                    child: Padding(
                      padding: EdgeInsets.all(defaultPadding - 3),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    'Food for \neveryone',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          height: 0.8,
                          fontFamily: 'SfProRounded',
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                          fontSize: 60,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        bottom: 40,
                        child: Image.asset('assets/images/pic1.png')),
                    Positioned(
                        left: 0, child: Image.asset('assets/images/pic2.png')),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            primaryColor.withOpacity(0.2),
                            primaryColor.withOpacity(0.2),
                            primaryColor.withOpacity(0.2),
                            primaryColor.withOpacity(0.2),
                            primaryColor.withOpacity(0.1),
                            primaryColor.withOpacity(0.8),
                            primaryColor.withOpacity(0.9),
                            primaryColor,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding + 20,
                        ),
                        child: MaterialButton(
                          elevation: 0,
                          color: whiteColor,
                          height: 70.h,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Get.toNamed(AuthScreen.routeName);
                          },
                          child: Text(
                            'Get started',
                            style: TextStyle(
                              color: primaryLightColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    )
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
