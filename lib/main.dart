import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_deliver_app/colors.dart';
import 'package:food_deliver_app/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primaryColor: primaryColor,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: primaryColor,
              onPrimary: primaryColor,
              secondary: secondaryColor,
              onSecondary: secondaryColor,
              error: Colors.red,
              onError: Colors.red,
              background: backgroundColor,
              onBackground: backgroundColor,
              surface: backgroundColor,
              onSurface: backgroundColor,
            ),
            inputDecorationTheme:
                Theme.of(context).inputDecorationTheme.copyWith(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                    ),
            fontFamily: 'SfProRounded',
            scaffoldBackgroundColor: backgroundColor,
          ),
          home: const OnboardingScreen(),
        );
      },
    );
  }
}
